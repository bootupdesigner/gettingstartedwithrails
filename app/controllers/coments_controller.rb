class ComentsController < ApplicationController

  http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy

  def create
    @article = Article.find(params[:article_id])
    @coment = @article.coments.create(coment_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment.destroy redirect_to article_path(@article)
  end

  private
    def coment_params
    params.require(:coment).permit(:commenter, :body, :status)
    end
end
