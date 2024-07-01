# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# ヒアドキュメントを使用して長い説明文を記述
eye_description = <<-BODY.strip_heredoc
  <div class="flex flex-col justify-start p-6 text-gray-600">
    <a href="#" class="text-3xl font-bold hover:text-gray-700 pb-4">ダウンタイムを快適に過ごす方法</a>
    <p href="#" class="text-sm pb-8">
      Published on April 25th, 2020
    </p>
    <h1 class="text-2xl font-bold pb-2">目元の整形一覧</h1>
    <hr class="border-t-1 border-gray-300 pb-3">
    <ul class="list-disc pl-5">
      <li>二重埋没</li>
      <li>二重全切開</li>
      <li>眉下リフト</li>
      <li>タレ目形成（グラマラス）</li>
      <li>目尻・目頭切開</li>
      <li>蒙古ひだ形成</li>
      <li>くまとり</li>
      <li>瞼の脂肪とり</li>
      <li>たるみとり</li>
    </ul>

    <h1 class="text-2xl font-bold pb-2 pt-10">正しい過ごし方</h1>
    <hr class="border-t-1 border-gray-300 pb-3">

    <h3 class="text-xl font-bold pb-3">頭を高くする</h3>
    <p class="pb-3">寝る際には、クッションを使用するか、タオルを枕に重ねて高さを調節するなど、目元を心臓よりも高い位置に持っていきましょう。これは、血液の流れをスムーズにし、目元の腫れを軽減するための対策です。</p>
    <p class="pb-3">また、日中の時間帯も、可能な限り横になることを避け、座った状態を保つことをおすすめします。この姿勢は、血液の流れを適切に保ちます。</p>
    <p class="pb-3">横になると、目と心臓が同じ位置となるため、目の周囲に血液が溜まりやすくなります。血液が目の周囲に溜まると、腫れや内出血が引きにくくなる可能性があります。そのため、頭をなるべく高い位置に保ちましょう。</p>

    <h1 class="text-xl font-bold pb-3 pt-5">運動や飲酒・長風呂を避ける</h1>
    <p class="pb-3">手術後、体への負担を軽減するためには安静に過ごすことが何よりも大切です。</p>
    <p class="pb-3">無理に体を動かすと、血行が活発になり結果的に腫れや痛みが引きにくくなる可能性があるため、適度な休息と安静が必要です。</p>
    <p class="pb-3">そのため、特に手術直後の10日間は、体の回復を最優先に考え、無理をせずゆったりと過ごすことをオススメします。10日以降も身体の状態に応じて、無理をせず自分の体調を第一に考えることが大切です。</p>

    <h1 class="text-xl font-bold pb-3 pt-5">目周りを冷やす（術後72時間）</h1>
    <p class="pb-3">炎症のピークは48〜72時間前後とされているため、手術の大きさに関わらず、最初の72時間は冷やすことが大切です。</p>
    <p class="pb-3">特に目の周りは腫れや内出血が起こりやすい部位のため、これらを早く引かせるためには冷やすことがおすすめです。</p>
    <p class="pb-3">術後最初の3日間はしっかりと患部を冷やし続けることが必要ですが、その後は冷やす必要はありません。過度に目を冷やしすぎるとむくみが残りやすくなる可能性があるため、適度な冷却が大切です。</p>

    <h1 class="text-xl font-bold pb-3 pt-5">目周りを軽く温める（術後72時間以降）</h1>
    <p class="pb-3">72時間冷やした後は「正しく」温めましょう。</p>
    <p class="pb-3">「温める」というよりは、手術から72時間以降「冷やさない」ことが最も大切です。</p>
    <p class="pb-3">ホットアイマスクやホットタオルなどで、適度に目元を温めると効果的です。</p>
    <p class="pb-3">熱すぎたり、長時間温めていると火傷の原因となるため、ほんのり温めるだけで十分です。</p>

    <h1 class="text-xl font-bold pb-3 pt-5">傷口の乾燥を防ぐ</h1>
    <p class="pb-3">傷跡をきれいに治すためには、しっかりと保湿しましょう。保湿は皮膚が再生するのを助け、傷跡がきれいに改善します。</p>
    <p class="pb-3">保湿用品は、敏感肌用のものや、クリニックで指定された製品を使用すると安心です。これらの製品は、肌に必要な水分を補給し、傷跡が目立たなくなるのを助けます。</p>

    <h1 class="text-xl font-bold pb-3 pt-5">紫外線を防ぐ</h1>
    <p class="pb-3">紫外線を受けると傷跡が色素沈着になってしまう可能性があるため、紫外線対策は大切です。特に、日中の強い日差しを受けると傷跡が目立つようになってしまう可能性があります。</p>
    <p class="pb-3">傷口に日焼け止めを塗布するタイミングについては、クリニックに相談して適切なアドバイスを得ていただくと良いでしょう。</p>
    <p class="pb-3">また、帽子やサングラス、日傘などのアイテムを使用して紫外線から身を守ることも大切です。これらのアイテムは、直接紫外線を遮断するだけでなく、反射した紫外線からも皮膚を守る効果があります。</p>

    <h1 class="text-2xl font-bold pb-2 pt-10">アイテム</h1>
    <hr class="border-t-1 border-gray-300 pb-3">
    <h1 class="text-xl font-bold pb-3">ビーズクッション</h1>
    <a href="https://www.amazon.co.jp/Yogibo-%E3%83%A8%E3%82%AE%E3%83%9C%E3%83%BC-Max-%E3%83%80%E3%83%BC%E3%82%AF%E3%82%B0%E3%83%AC%E3%83%BC-%E3%80%90%E5%8F%97%E6%B3%A8%E7%94%9F%E7%94%A3%E5%93%81%E3%80%91/dp/B00XXFFLPI/ref=zg_bs_g_5341886051_d_sccl_2/355-6087128-4752335?psc=1" style="text-decoration: underline;">Amazonで詳細を見る</a>
    <p>Coming soon..URLをクリックしなくても商品ページが表示される予定です</p>

    <h1 class="text-xl font-bold pb-3 pt-5">アイマスク（温冷両用）</h1>
    <a href="https://www.amazon.co.jp/NEWGO-%E3%83%9B%E3%83%83%E3%83%88%E3%82%A2%E3%82%A4%E3%83%9E%E3%82%B9%E3%82%AF%E3%82%B3%E3%83%BC%E3%83%89%E3%83%AC%E3%82%B9-%E3%82%B8%E3%82%A7%E3%83%AB%E3%82%A2%E3%82%A4%E3%83%9E%E3%82%B9%E3%82%AF-%E7%B9%B0%E3%82%8A%E8%BF%94%E3%81%97%E4%BD%BF%E7%94%A8%E5%8F%AF%E8%83%BD-%E6%B4%97%E6%BF%AF%E5%8F%AF%E8%83%BD-%E3%83%96%E3%83%AB%E3%83%BC/dp/B078TBSBRR/ref=sr_1_7?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&crid=3195OXLPPS7K0&dib=eyJ2IjoiMSJ9.h-obzwzjYQ1rBFdO3LAC-HYk2zbc7Fv_cihZIy_40V0RKemmyceUh5lTFfgzkSyzDAT7WHqH9dq1dleFjfDC-mAjYbOYVA2NZiiQzAGMIJcR7yVUiQNQRv2Di5s0ibSUEs7YqNAhQ5zqoT2dQmp2ZHazS-X5jZPzyTCF__DLkPIC_o4WFEuvwK3zGJUm4ijA0FPC6T9nZB4eiCrtgQ3koLcrpLvIafXqGsRzoWsVePEZydGgvopviTO4EqKdoGxcJyyeQ9QvYBpEdhhWc4NoW3r_hYW9Mw5BjDV-XrKJ2MI._P5AXqP1Rxu_vxyruox4donxgN08UCLhS1s_iBRWPfg&dib_tag=se&keywords=amazon+-%E3%82%A2%E3%82%A4%E3%83%9E%E3%82%B9%E3%82%AF+%E4%BF%9D%E5%86%B7&qid=1719806370&sprefix=amazon+-%E3%82%A2%E3%82%A4%E3%83%9E%E3%82%B9%E3%82%AF+%E6%B8%A9%E5%86%B7%2Caps%2C204&sr=8-7" style="text-decoration: underline;">Amazonで詳細を見る</a>
    <p>Coming soon..URLをクリックしなくても商品ページが表示される予定です</p>

    <h1 class="text-2xl font-bold pb-2 pt-10">服装</h1>
    <hr class="border-t-1 border-gray-300 pb-3">
    <ul class="list-disc pl-5">
      <li>縁が太いメガネやサングラス</li>
      <li>帽子</li>
    </ul>
    <img src="/assets/cap.jpg" alt="Potassium Rich Foods" class="mt-5 w-1/2">

    <h1 class="text-2xl font-bold pb-2 pt-10">季節</h1>
    <hr class="border-t-1 border-gray-300 pb-3">
    <p class="pb-3">春は進学や就職などで環境が新しくなり、手術を行いやすい季節です。人生の大きな節目である春は、新たな環境への適応や、新たな人々との出会いがあり、自分自身をリセットし、新たな自分を作り出す絶好のチャンスとなります。</p>
    <p class="pb-3">また、春から夏にかけては日差しが強くなるため、サングラスや帽子、日傘を用いても周囲に不自然に思われにくいです。できるだけ手術を秘密にしたい人にとっても、春から夏はおすすめです。</p>

    <h1 class="text-2xl font-bold pb-2 pt-10">食べ物</h1>
    <hr class="border-t-1 border-gray-300 pb-3">
    <p class="pb-3">ダウンタイム中は、体の回復を促進するために食生活に配慮しましょう。</p>
    <p class="pb-3">辛い食べ物はNGです。体内の炎症を引き起こし、腫れや痛みを悪化させる可能性があります。</p>
    <p class="pb-3">さらに、むくみ解消のためにカリウムが豊富に含まれる食材を摂取することがお勧めです。カリウムは体内の余分な塩分を排出し、むくみを軽減する効果があります。</p>
    <p class="pb-3">バランスよく摂取することで回復を早めることができます。</p>
    <h3 class="text-lg font-bold pb-3">＜カリウムが多く含まれている食べ物＞</h3>
    <ul class="list-disc pl-5">
      <li>バナナ</li>
      <li>アボカド</li>
      <li>ほうれん草</li>
      <li>海藻</li>
    </ul>
    <img src="/assets/potassium.png" alt="Potassium Rich Foods" class="mt-5 w-1/2">

    <h3 class="text-lg font-bold pb-2 pt-5">＜NGな食事＞</h3>
    <ul class="list-disc pl-5">
      <li>塩分の多いもの</li>
      <li>辛いもの</li>
      <li>お酒</li>
    </ul>

    <h1 class="text-2xl font-bold pb-2 pt-10">サプリ</h1>
    <hr class="border-t-1 border-gray-300 pb-3">
    <p class="pb-3">腫れを極力抑えたい場合は、サプリメントの服用をクリニックに相談してみましょう。</p>
    <p class="pb-3">クリニックによっては、腫れや内出血を抑えるためのサプリメントを出してくれるところがあります。</p>
    <p class="pb-3">例えば「SINECCH（シンエック）」は、アメリカで認可を受けた術後回復用のサプリメントです。主成分はナチュラルハーブで、埋没法の施術を受けた後の腫れや内出血を抑えたいときにも有益とされます。</p>
    <p class="pb-3">バランスの良い食事を摂れば、基本的にサプリメントの服用は不要です。</p>
  </div>
BODY

AreaCategory.create!(
  title: "目",
  body_title: "ダウンタイムを乗り切ろう！〜目元整形編〜",
  area_image: "/assets/eye3.jpg",
  body_image: "/assets/eye_body.jpg",
  body: eye_description
  )