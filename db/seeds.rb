User.create(email: 'admin@example.com',   password: 'password')

array = %w(#トイレ #駐車場 #芝生 #アスレチック #水遊び #ボール遊び #公園散歩 #滑り台 #ブランコ #砂場 #ジャングルジム #鉄棒)
array.each{ |tag|
  tag_list = ActsAsTaggableOn::Tag.new
  tag_list.name = tag
  tag_list.save
}

Post.create!(
  image: File.open("#{Rails.root}/public/uploads/post/image/1/20200704212756.jpg"),
  park: "ねんも公園",
  outline: "カラフルな複合遊具と木製遊具が人気で、幼児を連れたお母さんたちの姿が多く、いつも子どもたちの歓声でにぎわっています。自然の原っぱではネコジャラシやシロツメクサなどを使った季節ごとの草花遊びが楽しめます。",
  location: "日野市高幡1024番地",
  access: "京王線高幡不動駅より百草園駅方面へ徒歩10分",
  tag_list: "#水遊び #アスレチック"
)
Post.create!(
  image: File.open("#{Rails.root}/public/uploads/post/image/4/amagoi.jpg"),
  park: "雨乞公園",
  outline: "明るさと落ち着いた雰囲気の両面を持つ公園です。",
  location: "日野市百草881番地の8",
  access: "三沢台小学校バス停より東へ徒歩3分",
  tag_list: "#砂場 #滑り台 #公園散歩"
)
Post.create!(
  image: File.open("#{Rails.root}/public/uploads/post/image/7/hodokubo.jpg"),
  park: "ほどくぼ地区広場",
  outline: "少し傾斜のある草原と雑木林。遊具はありませんが、木登り、草すべり、どんぐり拾いなどが楽しめます。原っぱなので、はだしでかけまわっても大丈夫。",
  location: "日野市程久保3丁目22番地の2",
  access: "京王線多摩動物公園駅より東へ徒歩5分",
  tag_list: "#芝生"
)
Post.create!(
  image: File.open("#{Rails.root}/public/uploads/post/image/6/ajisai.jpg"),
  park: "芙蓉公園",
  outline: "日野市の「高幡不動」のすぐそばにあるこぢんまりとした公園です。団地の中の高台にあり、地域の子供達の憩いの場となっています。",
  location: "東京都日野市高幡714-21",
  access: "高幡不動駅から徒歩5分",
  tag_list: "#滑り台 #鉄棒 #ブランコ #砂場"
)
Post.create!(
  image: File.open("#{Rails.root}/public/uploads/post/image/8/sankaku.jpg"),
  park: "三角点公園",
  outline: "桜の大木が点在し、夏季は適度な日陰を作ってくれるので安心して遊べます。古いけれど遊具の種類が多く、遠くから遊びに来る親子もいていつもにぎやか。",
  location: "日野市百草896番地の11",
  access: "三沢台小学校バス停の東側",
  tag_list: "#滑り台 #ジャングルジム #鉄棒 #ボール遊び"
)
Post.create!(
  image: File.open("#{Rails.root}/public/uploads/post/image/8/otikawa.jpg"),
  park: "落川公園",
  outline: "公園の外周には三方に水路がのびており、ザリガニとりや水遊びが楽しめます。見通しのよい芝生の広場は親子連れでにぎわっています。日影が少ないので、夏場は帽子を忘れずに",
  location: "日野市落川2012番地",
  access: "百草園駅より東へ徒歩約10分",
  tag_list: "#アスレチック #水遊び #芝生"
)
Post.create!(
  image: File.open("#{Rails.root}/public/uploads/post/image/8/simogou.jpeg"),
  park: "下郷公園",
  outline: "この公園の前を通る川崎街道において、信号機に付いている「三沢西」「三沢」「三沢東」という名称が、「上講中」「中講中」「下講中」の場所とほぼ一致しそうです。",
  location: "東京都日野市三沢２丁目19",
  access: "高幡不動駅から徒歩10分",
  tag_list: "#滑り台 #砂場"
)

Post.create!(
  image: File.open("#{Rails.root}/public/uploads/post/image/8/kouchi.jpg"),
  park: "河内公園",
  outline: "常緑樹の生垣に囲まれ、落ち着いた雰囲気の公園です。すべり台のまわりを取り囲む丸い砂場では、泥だんご作りやトンネル掘りなどを楽しむ子どもたちの姿が見られます。涼しげな壁泉と藤棚は、憩いの空間となっています。",
  location: "日野市百草2015番地",
  access: "百草園駅より徒歩約10分",
  tag_list: "#滑り台 #砂場 #トイレ"
)
Post.create!(
  image: File.open("#{Rails.root}/public/uploads/post/image/8/irohazaka.jpg"),
  park: "いろは坂公園",
  outline: "多摩市にある「いろは坂桜公園」はいろは坂の中程にあり、桜の美しさに定評がある公園です。",
  location: "東京都多摩市桜ケ丘4-33",
  access: "聖蹟桜ヶ丘駅から歩いて10分",
  tag_list: ""
)
Post.create!(
  image: File.open("#{Rails.root}/public/uploads/post/image/8/kurumabori.jpg"),
  park: "くるまぼり公園",
  outline: "「くるま」とはここでは、水車のこと。静かな住宅地の中にある公園は、芝生と小山のある広場公園で、樹木が生い茂る。木製の複合遊具などもあり、子どもから大人まで幅広い年代が訪れている。",
  location: "東京都多摩市東寺方1-16",
  access: "京王線「聖蹟桜ヶ丘駅」から徒歩5分",
  tag_list: "#滑り台 #ブランコ #アスレチック #トイレ #芝生"
)
Post.create!(
  image: File.open("#{Rails.root}/public/uploads/post/image/8/kurumabori.jpg"),
  park: "乞田・貝取ふれあい広場",
  outline: "公園自体の広さは小さめですが、子どもが楽しめる要素がたくさん詰まっている公園です。巨大遊具で思いっきり遊んだり、水遊びもきるよ!",
  location: "東京都多摩市乞田810番地",
  access: "「京王永山」駅　徒歩15分",
  tag_list: "#水遊び #アスレチック #芝生 #トイレ"
)
Post.create!(
  image: File.open("#{Rails.root}/public/uploads/post/image/8/suwakita.jpg"),
  park: "諏訪北公園",
  outline: "諏訪北公園は野球グラウンド、テニスコートと運動が中心の公園です。その周りには緑の多い散歩道が張り巡らされており、眺めの良い景色も存分に楽しめます。",
  location: "多摩市諏訪3丁目",
  access: "「最寄り駅：京王永山",
  tag_list: "#芝生 #公園散歩 #駐車場 #トイレ"
)
Post.create!(
  image: File.open("#{Rails.root}/public/uploads/post/image/8/nagayama_minami.jpg"),
  park: "永山南公園",
  outline: "永山南公園は大きな永山団地の前に大きなグラウンドがある公園です。自然とふれあう散歩道ありテニスコートありと総合的な公園です。",
  location: "多摩市永山四丁目７番12号",
  access: "最寄りバス停：きらぼし銀行前",
  tag_list: "#駐車場 #トイレ #アスレチック #砂場 #滑り台"
)
Post.create!(
  image: File.open("#{Rails.root}/public/uploads/post/image/8/turumakihigasi.jpg"),
  park: "鶴牧東公園",
  outline: "主役の山はとにかく美しい。ニュータウン開発でうまれた土を盛った山が主役の鶴牧東公園",
  location: "多摩市鶴牧三丁目16番地",
  access: "最寄りバス停：奈良原公園",
  tag_list: "#トイレ #公園散歩 #芝生"
)
