class PostController<Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), "..")

  set :view, Proc.new { File.join(root, "views") }

  configure:development do
    register Sinatra::Reloader
  end

$videos = [
  {
    id: 0,
    title: "Video 1",
    link: "https://www.youtube.com/embed/lDK9QqIzhwk",
    description: "This is video number 1"
  },
  {
    id: 1,
    title: "Video 2",
    link: "https://www.youtube.com/embed/n4RjJKxsamQ",
    description: "This is video number 2"
  },
  {
    id: 2,
    title: "Video 3",
    link: "https://www.youtube.com/embed/1w7OgIMMRc4",
    description: "This is video number 3"
  },
  {
    id: 3,
    title: "Video 4",
    link: "https://www.youtube.com/embed/9-H8Yxz5fJs",
    description: "This is video number 4"
  },
  {
    id: 4,
    title: "Video 5",
    link: "https://www.youtube.com/embed/btPJPFnesV4",
    description: "This is video number 5"
  }
]

  get "/" do
    @video = $videos
    erb :'vids/index'
  end

  get "/:id" do
    id = params[:id].to_i
    @video = $videos[id]
    # @src = $videos[:link]
    erb :'vids/showvids'
  end
end
