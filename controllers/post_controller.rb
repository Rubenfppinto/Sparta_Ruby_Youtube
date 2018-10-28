class PostController<Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), "..")

  set :view, Proc.new { File.join(root, "views") }

  configure:development do
    register Sinatra::Reloader
  end

$videos = [
  {
    id: 0,
    title: "Bon Jovi",
    sub_title: "Livin' on a prayer",
    link: "https://www.youtube.com/embed/lDK9QqIzhwk",
    description: "Livin' on a Prayer is Bon Jovi's second chart-topping song from their third album Slippery When Wet. Written by Jon Bon Jovi, Richie Sambora, and Desmond Child, the single, released in late 1986, was well received at both rock and pop radio and its music video was given heavy rotation at MTV, giving the band their first No. 1 on the Billboard Mainstream Rock chart and their second consecutive No. 1 Billboard Hot 100 hit."
  },
  {
    id: 1,
    title: "Scorpions",
    sub_title: "Wind of Change",
    link: "https://www.youtube.com/embed/n4RjJKxsamQ",
    description: "Wind of Change is a power ballad by the German rock band Scorpions, recorded for their eleventh studio album, Crazy World (1990). The song was composed and written by the band's lead singer Klaus Meine and produced by Keith Olsen and the band. It was released as the album's third single in January 1991 and became a worldwide hit, just after the failed coup that would eventually lead to the collapse of the Soviet Union. The song topped the charts in Germany and across Europe and peaked at number four in the United States on August 31, 1991 and number two in the United Kingdom. It later appeared on the band's 1995 live album Live Bites, their 2000 album with the Berlin Philharmonic Orchestra, Moment of Glory, and on their 2001 unplugged album Acoustica. With estimated sales of 14 million copies sold worldwide, Wind of Change is one of the best-selling singles of all time. It holds the record for the best-selling single by a German artist."
  },
  {
    id: 2,
    title: "Guns N'Roses",
    sub_title: "Sweet Child O'mine",
    link: "https://www.youtube.com/embed/1w7OgIMMRc4",
    description: "Sweet Child o' Mine is a song by American rock band Guns N' Roses, appearing on their debut album, Appetite for Destruction. Released in August 1988 as the album's third single, the song topped the Billboard Hot 100 chart, becoming the band's only number 1 US single. Billboard ranked it the number 5 song of 1988. Re-released in 1989, it reached number 6 on the UK Singles Chart.Guitar st Slash said in 1990, The song turned into a huge hit and now it makes me sick. I mean, I like it, but I hate what it represents."
  },
  {
    id: 3,
    title: "Guns N'Roses",
    sub_title: "Knocking on Heavens Door",
    link: "https://www.youtube.com/embed/9-H8Yxz5fJs",
    description: "Knockin' on Heaven's Door is a song written and sung by Bob Dylan, for the soundtrack of the 1973 film Pat Garrett and Billy the Kid. Released as a single, it reached No. 12 on the Billboard Hot 100 singles chart. Described by Dylan biographer Clinton Heylin as an exercise in splendid simplicity, the song, in terms of the number of other artists who have covered it, is one of Dylan's most popular post-1960s compositions. Members of the Western Writers of America chose it as one of the Top 100 Western songs of all time."
  },
  {
    id: 4,
    title: "Survivor",
    sub_title: "Eye of the Tiger",
    link: "https://www.youtube.com/embed/btPJPFnesV4",
    description: "Eye of the Tiger is a song composed by American rock band Survivor. It was released as a single from their third album of the same name Eye of the Tiger and was also the theme song for the film Rocky III, which was released a day before the single. The song was written by Survivor guitarist Frankie Sullivan and keyboardist Jim Peterik, and was recorded at the request of Rocky III star, writer, and director Sylvester Stallone, after Queen denied him permission to use Another One Bites the Dust, the song Stallone intended as the Rocky III theme. The version of the song that appears in the movie is the demo version of the song. The movie version also contained tiger growls, something that did not appear on the album version. It features original Survivor singer Dave Bickler on lead vocals."
  }
]

  get "/" do
    @video = $videos
    erb :'vids/index'
  end

  get "/:id" do
    id = params[:id].to_i
    @video = $videos[id]
    @showvid = $videos
    erb :'vids/showvids'
  end
end
