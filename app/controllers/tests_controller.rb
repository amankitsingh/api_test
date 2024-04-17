class TestsController < ApplicationController
  before_action :set_test, only: [:show, :update, :destroy]

  # GET /tests
  def index
    @tests = Test.all.page(params[:page]||1).per(params[:per_page]||1)
    pagination_info = {
      current_page: @tests.current_page,
      total_pages: @tests.total_pages,
      total_count: @tests.total_count
    }
    render json: { test: @tests, pagination: pagination_info }, status: :ok
  end

  # GET /tests/1
  def show
    render json: @test
  end

  # POST /tests
  def create
    begin
      @test = Test.new(test_params)
      if @test.save
        render json: @test, status: :created, location: @test
      else
        render json: { error: @test.errors.full_messages}, status: :unprocessable_entity
      end
    rescue => e
      render json: { error: e.message}, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tests/1
  def update
    if @test.update(test_params)
      render json: @test
    else
      render json: @test.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tests/1
  def destroy
    @test.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test
      @test = Test.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def test_params
      params.require(:test).permit(:name)
    end
end
