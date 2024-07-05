# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# ヒアドキュメントを使用して長い説明文を記述
# 目の記事
eye_description = <<-BODY.strip_heredoc
  <div class="flex flex-col justify-start p-6 text-gray-700">
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
    <h1 class="text-xl font-bold">ビーズクッション</h1>
    <a href="https://www.amazon.co.jp/Yogibo-%E3%83%A8%E3%82%AE%E3%83%9C%E3%83%BC-Max-%E3%83%80%E3%83%BC%E3%82%AF%E3%82%B0%E3%83%AC%E3%83%BC-%E3%80%90%E5%8F%97%E6%B3%A8%E7%94%9F%E7%94%A3%E5%93%81%E3%80%91/dp/B00XXFFLPI/ref=zg_bs_g_5341886051_d_sccl_2/355-6087128-4752335?psc=1" style="text-decoration: underline;">Amazonで詳細を見る</a>
    <p>Coming soon..URLをクリックしなくても商品ページが表示される予定です</p>

    <h1 class="text-xl font-bold pt-5">アイマスク（温冷両用）</h1>
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
  body_title: "目元の整形、ダウンタイムはどうやって過ごすの？",
  area_image: "/assets/eye3.jpg",
  body_image: "/assets/eye_body.jpg",
  body: eye_description
  )


  # ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
  # ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
  # 鼻の記事
  nose_description = <<-BODY.strip_heredoc
    <div class="flex flex-col justify-start p-6 text-gray-700">
      <a href="#" class="text-3xl font-bold hover:text-gray-700 pb-4">鼻整形ガイド！ダウンタイムを快適に過ごす方法</a>
      <p href="#" class="text-sm pb-8">
        Published on April 25th, 2024
      </p>
      <h1 class="text-2xl font-bold pb-2">鼻の整形一覧</h1>
      <hr class="border-t-1 border-gray-300 pb-3">
      <ul class="list-disc pl-5">
        <li>鼻尖形成</li>
        <li>小鼻縮小</li>
        <li>ワシ鼻修正、ハンプ切除</li>
        <li>斜鼻修正</li>
        <li>骨切り幅寄せ</li>
        <li>隆鼻術（プロテーゼ、自家組織：軟骨移植）</li>
        <li>鼻中隔延長</li>
        <li>鼻孔縁挙上・下降</li>
        <li>猫手術・Cカール形成（鼻唇角形成術）</li>
        <li>鼻柱下降・挙上</li>
        <li>ヒアルロン酸注入</li>
      </ul>

      <h1 class="text-2xl font-bold pb-2 pt-10">正しい過ごし方</h1>
      <hr class="border-t-1 border-gray-300 pb-3">

      <h3 class="text-xl font-bold pb-3">仰向けで寝る</h3>
      <p class="pb-3">傷口の圧迫を避けるために、寝るときはうつ伏せを避け、仰向けで寝ることをおすすめします。</p>
      <p class="pb-3">うつ伏せで寝る習慣がある方は注意が必要です。鼻が枕や布団に直接当たることで、傷の治りが遅くなる可能性があります。さらに、うつ伏せで寝ると鼻の形が変わってしまうリスクもあります。</p>
      <p class="pb-3">心配な方は、ネックピローを活用するのが効果的です。また、横向きに寝ることを防ぐために体をサポートするクッションや抱き枕を使うのも良いでしょう。</p>
      <p class="pb-3">さらに、ダウンタイム中は寝る環境にも気を配ることが大切です。寝室の温度や湿度を適切に保ち、リラックスできる環境を整えましょう。睡眠の質を向上させるために、アロマオイルやヒーリングミュージックを取り入れるのもおすすめです。</p>

      <h1 class="text-xl font-bold pb-3 pt-5">メガネを控える</h1>
      <p class="pb-3">メガネは鼻に負担がかかりやすいアイテムの一つですので、注意が必要です。長時間の着用は控えるようにしましょう。</p>
      <p class="pb-3">プロテーゼを挿入した場合、少なくとも1か月間はメガネを避けてください。プロテーゼが完全に安定するまで、メガネに限らず、鼻根部や鼻筋を圧迫するものは避けるべきです。この期間は、メガネの代わりにコンタクトレンズの使用を検討すると良いでしょう。</p>
      <p class="pb-3">どうしてもメガネを使用しなければならない場合、鼻パッドが鼻に直接当たらないように工夫された「鼻整形専用」のメガネを使用することをおすすめします。</p>

      <h1 class="text-xl font-bold pb-3 pt-5">口腔内の乾燥対策</h1>
      <p class="pb-3">オープン法での手術後は、出血を防ぐために数日鼻栓（スポンジ）を挿れることがあるため、口呼吸になります。</p>
      <p class="pb-3">また、手術直後は、鼻の内部が腫れたり、詰まったりしているため、鼻呼吸が難しくなります。</p>
      <p class="pb-3">口呼吸が続くと、口腔内が乾燥しやすくなり、喉に炎症を引き起こすリスクが高まり、この状態が続くと、喉の痛みや不快感、さらには感染症のリスクも増加する可能性があります。</p>
      <p class="pb-3">喉に直接塗るスプレータイプの薬を使用したり、加湿器を使用することもおすすめです。</p>
      <p class="pb-3">また、マスクを使用することも乾燥防止に役立ちます。マスクを着用することで、呼吸する空気が湿度を含み、喉や鼻の乾燥を軽減することができます。マスクの素材や形状に注意し、快適に着用できるものを選ぶことが重要です。</p>
      <p class="pb-3">さらに、十分に水分補給をしましょう。鼻ギプスを着用していると、ギプスにコップやペットボトルが当たって飲みづらいため、ストローの使用がおすすめです。</p>
      
      <h1 class="text-xl font-bold pb-3 pt-5">禁煙</h1>
      <p class="pb-3">タバコには血管を収縮させる作用があります。血管が収縮すると酸素や栄養素の循環が妨げられ、傷口の治りが遅れる可能性があります。さらに、細菌による感染症のリスクも高まります。</p>
      <p class="pb-3">これらの理由から、できる限り禁煙しましょう。</p>
      
      <h1 class="text-xl font-bold pb-3 pt-5">シャワーを利用する</h1>
      <p class="pb-3">術後は傷口がまだ安定していないため、わずかな刺激でも出血のリスクがあります。これは外的な刺激だけでなく、血流の増加によっても引き起こされる可能性があります。入浴は血流が増加するため、術後1週間程度はシャワーだけで済ませましょう。</p>
      <p class="pb-3">シャンプーは、シャンプーハットを使用するか、誰かに手伝ってもらうことで鼻を濡らさずにできます。美容院でシャンプーだけしてもらうのもおすすめです。これにより、鼻への刺激を最小限に抑えることができます。</p>

      <h1 class="text-xl font-bold pb-3 pt-5">洗顔は慎重に</h1>
      <p class="pb-3">テープで固定している期間の洗顔は注意が必要です。患部を濡らさないようにし、鼻を洗う際は優しくおこなってください。</p>
      <p class="pb-3">濡れタオルや拭き取りタイプのウォータークレンジングを使って工夫しましょう。</p>
      <img src="/assets/face_wash.png" alt="face wash" class="mt-5 w-1/2">

      <h1 class="text-xl font-bold pb-3 pt-5">安静に過ごす</h1>
      <p class="pb-3">手術後、体への負担を軽減するためには安静に過ごすことが何よりも大切です。</p>
      <p class="pb-3">無理に体を動かすと、血行が活発になり結果的に腫れや痛みが引きにくくなる可能性があるため、適度な休息と安静が必要です。</p>
      <p class="pb-3">そのため、特に手術直後の10日間は、体の回復を最優先に考え、無理をせずゆったりと過ごすことをオススメします。10日以降も身体の状態に応じて、無理をせず自分の体調を第一に考えることが大切です。</p>
      
      <h1 class="text-xl font-bold pb-3 pt-5">目周りを冷やす（術後72時間）</h1>
      <p class="pb-3">プロテーゼ挿入後は、鼻ではなく眉間や上まぶたに腫れが生じ、内出血となる場合もあります。それらの症状は数日で落ち着きますが、手術後72時間は冷やすことが大切です。</p>
      <p class="pb-3">特に目の周りは腫れや内出血が起こりやすい部位のため、これらを早く引かせるためには冷やすことがおすすめです。</p>
      <p class="pb-3">術後最初の3日間はしっかりと患部を冷やし続けることが必要ですが、その後は冷やす必要はありません。過度に目を冷やしすぎるとむくみが残りやすくなる可能性があるため、適度な冷却が大切です。</p>

      <h1 class="text-xl font-bold pb-3 pt-5">目周りを軽く温める（術後72時間以降）</h1>
      <p class="pb-3">72時間冷やした後は「正しく」温めましょう。</p>
      <p class="pb-3">「温める」というよりは、手術から72時間以降「冷やさない」ことが最も大切です。</p>
      <p class="pb-3">ホットアイマスクやホットタオルなどで、適度に目元を温めると効果的です。</p>
      <p class="pb-3">熱すぎたり、長時間温めていると火傷の原因となるため、ほんのり温めるだけで十分です。</p>


      <h1 class="text-2xl font-bold pb-2 pt-10">アイテム</h1>
      <hr class="border-t-1 border-gray-300 pb-3">
      <h1 class="text-xl font-bold">ビーズクッション</h1>
      <a href="https://www.amazon.co.jp/Yogibo-%E3%83%A8%E3%82%AE%E3%83%9C%E3%83%BC-Max-%E3%83%80%E3%83%BC%E3%82%AF%E3%82%B0%E3%83%AC%E3%83%BC-%E3%80%90%E5%8F%97%E6%B3%A8%E7%94%9F%E7%94%A3%E5%93%81%E3%80%91/dp/B00XXFFLPI/ref=zg_bs_g_5341886051_d_sccl_2/355-6087128-4752335?psc=1" style="text-decoration: underline;">Amazonで詳細を見る</a>
      <p>Coming soon..URLをクリックしなくても商品ページが表示される予定です</p>

      <h1 class="text-xl font-bold pt-5">アイマスク（温冷両用）</h1>
      <a href="https://www.amazon.co.jp/NEWGO-%E3%83%9B%E3%83%83%E3%83%88%E3%82%A2%E3%82%A4%E3%83%9E%E3%82%B9%E3%82%AF%E3%82%B3%E3%83%BC%E3%83%89%E3%83%AC%E3%82%B9-%E3%82%B8%E3%82%A7%E3%83%AB%E3%82%A2%E3%82%A4%E3%83%9E%E3%82%B9%E3%82%AF-%E7%B9%B0%E3%82%8A%E8%BF%94%E3%81%97%E4%BD%BF%E7%94%A8%E5%8F%AF%E8%83%BD-%E6%B4%97%E6%BF%AF%E5%8F%AF%E8%83%BD-%E3%83%96%E3%83%AB%E3%83%BC/dp/B078TBSBRR/ref=sr_1_7?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&crid=3195OXLPPS7K0&dib=eyJ2IjoiMSJ9.h-obzwzjYQ1rBFdO3LAC-HYk2zbc7Fv_cihZIy_40V0RKemmyceUh5lTFfgzkSyzDAT7WHqH9dq1dleFjfDC-mAjYbOYVA2NZiiQzAGMIJcR7yVUiQNQRv2Di5s0ibSUEs7YqNAhQ5zqoT2dQmp2ZHazS-X5jZPzyTCF__DLkPIC_o4WFEuvwK3zGJUm4ijA0FPC6T9nZB4eiCrtgQ3koLcrpLvIafXqGsRzoWsVePEZydGgvopviTO4EqKdoGxcJyyeQ9QvYBpEdhhWc4NoW3r_hYW9Mw5BjDV-XrKJ2MI._P5AXqP1Rxu_vxyruox4donxgN08UCLhS1s_iBRWPfg&dib_tag=se&keywords=amazon+-%E3%82%A2%E3%82%A4%E3%83%9E%E3%82%B9%E3%82%AF+%E4%BF%9D%E5%86%B7&qid=1719806370&sprefix=amazon+-%E3%82%A2%E3%82%A4%E3%83%9E%E3%82%B9%E3%82%AF+%E6%B8%A9%E5%86%B7%2Caps%2C204&sr=8-7" style="text-decoration: underline;">Amazonで詳細を見る</a>
      <p>Coming soon..URLをクリックしなくても商品ページが表示される予定です</p>

      <h1 class="text-xl font-bold pt-5">シャワーハット</h1>
      <a href="https://www.amazon.co.jp/%E3%80%90%E7%9C%BC%E7%A7%91%E5%8C%BB%E6%8E%A8%E8%96%A6%E3%80%91%E3%80%90%E3%82%B4%E3%83%A0%E3%83%90%E3%83%B3%E3%83%89%E8%AA%BF%E6%95%B4%E3%80%91-PrimeCode-%E3%82%B7%E3%83%A3%E3%83%B3%E3%83%97%E3%83%BC%E3%83%8F%E3%83%83%E3%83%88-%E8%B5%A4%E3%81%A1%E3%82%83%E3%82%93-%E3%83%94%E3%83%83%E3%82%BF%E3%83%AA%E3%83%95%E3%82%A3%E3%83%83%E3%83%88/dp/B0BMTDP5D3/ref=sr_1_1_sspa?adgrpid=71444320553&dib=eyJ2IjoiMSJ9.yV3A5Cbkkm1L87FVcMLw08ol2bg0ZUh0I7CKQTQogCIUarV95AvIYNnpM6RDKr48us6moogHDRFTcqN1t4XdHK6r6LtJaYNspljdxOT8B82yw3owphfzBLThpzSjihKIl6Qu08_plpJFORQwIxCK-6b4PJORFaeRzmQaMOWpp1HXMMcpKEtGTE6aD5mPLb6kaPUsKKb5MNHCHJku81hm40EGSj572zzNQfdWlo6RH13bY7CxIcNj5RqagcEk9QeNOWJI90rni0LHzf2-Dm3cvwv2lbPzYIHa_D8wtxByPaI.EqDNoa59Qn6M_uY4jyQmYJPOPeMPvpMmK0mQ0J2ttPg&dib_tag=se&hvadid=675296518050&hvdev=c&hvlocphy=1009120&hvnetw=g&hvqmt=e&hvrand=16138498015055996182&hvtargid=kwd-347112744476&hydadcr=26712_11786296&jp-ad-ap=0&keywords=%E3%82%B7%E3%83%A3%E3%83%B3%E3%83%97%E3%83%BC%E3%83%8F%E3%83%83%E3%83%88&qid=1719842311&sr=8-1-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&th=1">Amazonで詳細を見る</a>
      <p>Coming soon..URLをクリックしなくても商品ページが表示される予定です</p>

      <h1 class="text-xl font-bold pt-5">ストロー</h1>
      <a href="https://www.amazon.co.jp/%E3%82%B9%E3%82%B1%E3%83%BC%E3%82%BF%E3%83%BC-%E3%83%9A%E3%83%83%E3%83%88%E3%83%9C%E3%83%88%E3%83%AB%E3%82%AD%E3%83%A3%E3%83%83%E3%83%97-500ml-%E3%83%99%E3%83%BC%E3%82%B7%E3%83%83%E3%82%AF-PSHC10/dp/B08R82MH7T/ref=sr_1_5?crid=VD4N9DPP53Z1&dib=eyJ2IjoiMSJ9.oTlQDQnyhlvz3n0QuU-aBz2oXVZutSUQwzvZdqopoMfqFuit6NAyZT3O0Ss_IW9Vfg9igDD-KZ-h6wGmarAqGMIsEydO21b5j6b6ca_sxGiKTSyZmUL62jNmH_Jh0p-7O17Tcy9Q7YyV4qhPZ_uTCo-1mZgMRan5n3_jOplZ_G_MPXyKloHf5P51bLekW2a8z308vZyHKjthdfTXGDYToFN93X1giC3xqhM160x9EbhC_M5_oH-94MF2KJ_NT9ql113TmgEuyWq_PFcAtXB4q1C8ZKEVddG7K37Bq1YIdE0.gSglQZQ7O5_VFIWzk9jvUtx6wtS4nyyXg8TyF0Yay0w&dib_tag=se&keywords=%E3%82%B9%E3%83%88%E3%83%AD%E3%83%BC%E3%82%AD%E3%83%A3%E3%83%83%E3%83%97&qid=1719842339&sprefix=%E3%82%B9%E3%83%88%E3%83%AD%E3%83%BC%2Caps%2C179&sr=8-5&th=1">Amazonで詳細を見る</a>
      <p>Coming soon..URLをクリックしなくても商品ページが表示される予定です</p>

      <h1 class="text-xl font-bold pt-5">鼻整形専用メガネ</h1>
      <a href="https://www.amazon.co.jp/Doctorco-eyewear-Dr003-Doctorco%E7%9C%BC%E9%8F%A1-%E9%BC%BB%E3%81%AE%E6%95%B4%E5%BD%A2%E5%BE%8C%E7%94%A8%E3%81%AE%E7%9C%BC%E9%8F%A1%E3%80%81%E9%BC%BB%E3%81%AB%E8%B7%A1%E3%81%8C%E6%AE%8B%E3%82%89%E3%81%AA%E3%81%84%E7%9C%BC%E9%8F%A1/dp/B07D667MQ4/ref=sr_1_1?crid=285UMUTDMVAIG&dib=eyJ2IjoiMSJ9.hJEr5sdXAgL026VisOvr4FICO87XgIR9mBECVkI0xTytTk_0m79HAkYTO2zEL2gNsEMmcC1kH3bZerMpxtz7lsdD9hDI56kmZH_r7IwPeBKlIw1i0M8PFTbEXFFQFy_fJIWIdcMBiR-T1jE_Ux8u6qMG-CXWRE9KnBQdytpgH9_iS54J0rhmLBbh3sfxdejewiUUAVI_0mtkh6BZlMzbtNdbbQ0aNmtmsnhYl2KH6rgFLHHshOXt8jpxJ_2AvQhRvAw9pX0FWIpUX5BfkfRTEYxG3irjBHgKVXq10KOvRmQ.TafVN5H1QTLcr8_YqD5nDSl278GR8wMwmoTTJSTsMJ8&dib_tag=se&keywords=%E9%BC%BB+%E6%95%B4%E5%BD%A2+%E7%9C%BC%E9%8F%A1&qid=1719842374&sprefix=%E9%BC%BB%E6%95%B4%E5%BD%A2%E3%80%80%2Caps%2C187&sr=8-1">Amazonで詳細を見る</a>
      <p>Coming soon..URLをクリックしなくても商品ページが表示される予定です</p>

      <h1 class="text-xl font-bold pt-5">ネックピロー</h1>
      <a href="https://www.amazon.co.jp/%E3%80%90%E3%81%82%E3%82%89%E3%82%86%E3%82%8B%E5%A7%BF%E5%8B%A2%E3%81%AB%E5%AF%BE%E5%BF%9C%EF%BD%98%E9%A6%96%E3%83%95%E3%82%A3%E3%83%83%E3%83%88%E6%A7%8B%E9%80%A0%E3%80%91-%E3%80%90%E7%90%86%E5%AD%A6%E7%99%82%E6%B3%95%E5%A3%AB%E6%8E%A8%E5%A5%A8%EF%BD%98%E5%AF%9D%E5%85%B7%E3%83%A1%E3%83%BC%E3%82%AB%E3%83%BC%E9%96%8B%E7%99%BA%EF%BD%98%E7%96%B2%E3%82%8C%E7%9F%A5%E3%82%89%E3%81%9A%E3%81%AE%E3%83%88%E3%83%A9%E3%83%99%E3%83%AB%E3%82%92%E3%80%91%E3%80%90%E8%BB%8A%EF%BD%98%E3%83%90%E3%82%B9%EF%BD%98%E6%96%B0%E5%B9%B9%E7%B7%9A%E3%81%AB%E3%80%91%E6%97%85%E8%A1%8C%E7%94%A8-%E3%83%88%E3%83%A9%E3%83%99%E3%83%AB%E3%82%B0%E3%83%83%E3%82%BA-MyComfort/dp/B0CRSX1MWY/ref=sr_1_1_sspa?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&crid=2XIB97SASTCJC&dib=eyJ2IjoiMSJ9.6YQz65qwQ44t0FQNGsSzFQpOaY3tTH1Gz-4VZj84UrHxWqHp9xXIDwIS3kqpairSNIkQe3Yq_WjWARwvIuIBRpa9jyTB6CP-hmCc-28VGL80yjeuSEsPYOtXlDvudUh1Z2sWTshU7RwkGVfpnCB8hSDiN83g-uipbWL-qaMy9m9hTUwa2bg_HFN5uL2g0oBwo89PNfO7WSX32OsVnsvaIOS-0s3qybAfI1ph_SM60fMfs6BezxDwzOpInkdNQvuKdNMzXpGu_Yn78spZENJbgouyKn-RQ7Y4XPCIme_VkoI.rt1WGIBsPvMrK3uJHTpV95ppivcH9bgS7UEu-I9SfI4&dib_tag=se&keywords=%E3%83%8D%E3%83%83%E3%82%AF%E3%83%94%E3%83%AD%E3%83%BC&qid=1719842411&sprefix=%E3%83%8D%E3%83%83%E3%82%AF%E3%83%94r%E3%83%BC%2Caps%2C171&sr=8-1-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&psc=1">Amazonで詳細を見る</a>
      <p>Coming soon..URLをクリックしなくても商品ページが表示される予定です</p>

      <h1 class="text-xl font-bold pt-5">ぬれマスク</h1>
      <a href="https://www.amazon.co.jp/%E3%81%AE%E3%81%A9%E3%81%AC%E3%83%BC%E3%82%8B-%E3%81%AC%E3%82%8C%E3%83%9E%E3%82%B9%E3%82%AF-%E3%82%86%E3%81%9A%E3%81%8B%E3%82%8A%E3%82%93-%E4%B9%BE%E7%87%A5%E3%81%8C%E4%B8%8D%E5%AE%89%E3%81%AA%E6%99%82%E3%81%AB-10%E6%99%82%E9%96%93%E5%8A%A0%E6%B9%BF%E5%96%89%E6%BD%A4%E3%81%99/dp/B0CRZBHK4T/ref=sr_1_1_sspa?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&crid=1VND9E6YBF0CB&dib=eyJ2IjoiMSJ9.25A1bcEgq5MBFbVZwMpBn333o7MP169mwtrxtSOqjBCMzyXTEuTkzM-hrpe5IhhKUhD4PQdBBxacrSgbmthNZ9HGI4_HCCWnD24GjQNKoVpPTPdp_ljB7jMJq0c6tW8eOzGAeORTuYF6EN8anymqOCFFmBg5bph4pZTxqAl7ZUKYVzRT4k5pKd_8zNfyCjB88lZ19VQLHEbgCYsQGgLsXSRXF81pJIeEC3boV1me12WnHTru-3ItBtHEm07_IKbZNTMPM3ovMzeneoA1bJZtodOVCI3dmMtOHgnYuoplQyI.PpwuRg6n5sd11IohZTgHW6S4oOhSyNVLVcPOawK5WZw&dib_tag=se&keywords=%E3%81%AC%E3%82%8C%E3%83%9E%E3%82%B9%E3%82%AF&qid=1719842440&sprefix=%E3%81%AC%E3%82%8C%E3%83%9E%E3%82%B9%E3%82%AF%2Caps%2C177&sr=8-1-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&psc=1">Amazonで詳細を見る</a>
      <p>Coming soon..URLをクリックしなくても商品ページが表示される予定です</p>

      <h1 class="text-xl font-bold pt-5">のどスプレー</h1>
      <a href="https://www.amazon.co.jp/%E3%81%AE%E3%81%A9%E3%81%AC-%E3%82%8B-%E3%80%90%E7%AC%AC3%E9%A1%9E%E5%8C%BB%E8%96%AC%E5%93%81%E3%80%91%E3%81%AE%E3%81%A9%E3%81%AC%E3%83%BC%E3%82%8B%E3%82%B9%E3%83%97%E3%83%AC%E3%83%BCB-15mL/dp/B000YZN4OK/ref=sr_1_4?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&crid=38JJKBM6ABWXO&dib=eyJ2IjoiMSJ9.2nrPy7s8DwAFjRAlyqCAwTvaKXkUgjdcCObREja-x96a3_-zznhUPiLwBB8ApmtOOXzZXqwKc8yyk7BAq6LuxxKstRxqY7RvsSyJQFBubVy63tr3HndPhhhPuXwTNxrkkRVZDh-m-Z1PSaBmX0wbk0Ot_TTPG-GvpBgsgx3QYAjhkVm8BLj6Dj6LY_vs-ZWRwPBE2bS5I9PamxIbMvoBdBUkP4BesMord-jzDLnrz8vPPg7D4cwMTf8RJbkHXCQRDGjPocDe4YHxIj0OaNUWJijkeNg44TIMO6ebXm1lNpE.O3B2ON9XRZJoxWnR2jZGJFsqRQEm8MvD_0YpEk2QUdA&dib_tag=se&keywords=%E5%96%89%E3%82%B9%E3%83%97%E3%83%AC%E3%83%BC&qid=1719842461&sprefix=%E5%96%89%E3%82%B9%E3%83%97%E3%83%AC%E3%83%BC%2Caps%2C184&sr=8-4">Amazonで詳細を見る</a>
      <p>Coming soon..URLをクリックしなくても商品ページが表示される予定です</p>

      <h1 class="text-2xl font-bold pb-2 pt-10">服装</h1>
      <hr class="border-t-1 border-gray-300 pb-3">
      <ul class="list-disc pl-5">
        <li>帽子</li>
        <li>前開きの服</li>
        <p>かぶるお洋服ですと鼻にぶつかる心配があります。</p>
        <li>マスク</li>
        <p>鼻を圧迫しないよう、ゆったりとしたサイズのマスクを着用することがおすすめです。</p>
      </ul>

      <h1 class="text-2xl font-bold pb-2 pt-10">季節</h1>
      <hr class="border-t-1 border-gray-300 pb-3">
      <p class="pb-3">「夏の手術は、汗で感染しやすいので避けた方がいいですか？」</p>
      <p class="pb-3">暑い季節は汗をかきやすく、傷口の衛生が保ちにくいと思われがちですが、現代ではエアコンの普及により室内での快適な過ごし方が可能です。そのため、手術のタイミングはあなたの準備が整ったタイミングが最適です。ダウンタイムをしっかりと確保できる時期を選びましょう。</p>

      <h1 class="text-2xl font-bold pb-2 pt-10">食べ物</h1>
      <hr class="border-t-1 border-gray-300 pb-3">
      <p class="pb-3">手術後の回復を助ける食品には、たんぱく質、ビタミン、ミネラルが必要です。</p>
      <ul class="list-disc pl-5">
        <li>たんぱく質：肉、魚、豆腐など</li>
        <li>ビタミン：A（肌の再生）、C（コラーゲン生成）が豊富な果物や野菜、肝臓</li>
        <li>ほうれん草</li>
        <li>ミネラル：亜鉛が豊富な肉、魚、全粒穀物</li>
      </ul>
      <p class="pb-3">これらの食品をバランス良く摂取することで、体の自然な治癒力を高め、手術後の回復を促進できます。</p>
      <img src="/assets/protein.jpg" alt="protein" class="mt-5 w-1/2">
    </div>
BODY

AreaCategory.create!(
  title: "鼻",
  body_title: "鼻の整形、ダウンタイム中にあると便利なもの",
  area_image: "/assets/nose.png",
  body_image: "/assets/nose_body.png",
  body: nose_description
  )

  # ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
  # ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
  # リフトアップの記事
  lift_description = <<-BODY.strip_heredoc
    <div class="flex flex-col justify-start p-6 text-gray-700">
      <a href="#" class="text-3xl font-bold hover:text-gray-700 pb-4">小顔にするには？ダウンタイムを徹底解説！</a>
      <p href="#" class="text-sm pb-8">
        Published on April 25th, 2024
      </p>
      <h1 class="text-2xl font-bold pb-2">リフトアップ・小顔の整形一覧</h1>
      <hr class="border-t-1 border-gray-300 pb-3">
      <ul class="list-disc pl-5">
        <li>糸リフト</li>
        <li>切開リフト</li>
        <li>ハイフ</li>
        <li>バッカルファット除去</li>
        <li>メーラーファット除去</li>
        <li>ジョールファット除去</li>
        <li>骨切り</li>
        <li>骨削り</li>
        <li>脂肪吸引注射</li>
        <li>脂肪溶解注射</li>
        <li>脂肪吸引</li>
      </ul>

      <h1 class="text-2xl font-bold pb-2 pt-10">糸リフトとHIFUどっちがいいの？</h1>
      <hr class="border-t-1 border-gray-300 pb-3">
      <h3 class="text-lg font-bold pb-3">糸リフトは変化が欲しいとき</h3>
      <h3 class="text-lg font-bold pb-3">HIFUは現状維持したい、今より悪化させたくないとき</h3>
      <p class="pb-3">ご自身の目的に応じてカウンセリングで相談すると良いでしょう。</p>

      <h1 class="text-2xl font-bold pb-2 pt-10">HIFUのダウンタイム</h1>
      <hr class="border-t-1 border-gray-300 pb-3">
      <p class="pb-3">それぞれの肌状態や体質・施術部位・照射出力の違いにより、ダウンタイムの期間は前後することがあります。基本的には、HIFUは日常生活に支障がでるような傷は出来ないためダウンタイムは「ほとんどない」と言われています。</p>
      <p class="pb-3">HIFUのダウンタイムは、数日～1週間で落ち着くことがほとんどです。赤みや腫れ感がある場合には、冷やしていただくとダウンタイムの軽減につながります。</p>
      <p class="pb-3">以下にHIFUで起こりうる症状を示します。</p>

      <h3 class="text-xl font-bold pb-3">赤みや腫れ</h3>
      <p class="pb-3">HIFU施術後は一時的に赤みや腫れが出現することがあります。</p>
      <p class="pb-3">HIFUは、肌の内部に熱エネルギーを与えるため、一時的に炎症状態となります。そのため、赤みや腫れなどの症状が出現しますが、数日～1週間程度で落ち着きます。</p>
      <p class="pb-3">これらは、血流が良くなる行為（入浴、飲酒、激しい運動など）を行うと増強する可能性があるため、数日は控えることをおすすめします。</p>
      
      <h3 class="text-xl font-bold pb-3">筋肉痛のような鈍い痛み</h3>
      <p class="pb-3">ハイフ（HIFU）では、肌の内部にダメージを与えるため、施術後に筋肉痛のような痛みを感じることがあります。</p>
      <p class="pb-3">筋肉痛のような痛みも、基本的には我慢できる程度であり、数日～1週間程度で落ち着くことがほとんどです。</p>

      <h1 class="text-2xl font-bold pb-2 pt-10">正しい過ごし方（HIFU以外）</h1>
      <hr class="border-t-1 border-gray-300 pb-3">

      <h3 class="text-xl font-bold pb-3">食事</h3>
      <p class="pb-3">ダウンタイム期間中は、硬いものや大きく口を開ける必要がある食べ物は避けましょう。顎や頬を動かしすぎると患部に痛みや引きつれが生じることがあります。</p>
      <p class="pb-3">糸が馴染むまでは、豆腐やゼリーなど柔らかい食べ物を細かくして食べるのがおすすめです。特にパックに入った吸うタイプのゼリー飲料が便利です。</p>
      <p class="pb-3">また、飲酒は血行が良くなり腫れや内出血が悪化する可能性があるため、術後1～2週間は控えてください。その後もむくみや腫れ、傷の治りの遅れとなるため１ヶ月はなるべく控えましょう。</p>
      
      <h1 class="text-xl font-bold pb-3 pt-5">安静に過ごす</h1>
      <p class="pb-3">手術後1週間は安静にしましょう。日常生活は通常通り過ごしていただいて問題ありません。</p>
      <p class="pb-3">軽めの運動は2週間目から可能です。糸リフト後のサウナ・エステ・ヨガ・激しいスポーツは1ヶ月控えましょう。</p>
      
      <h1 class="text-xl font-bold pb-3 pt-5">頬や首を冷やす</h1>
      <p class="pb-3">切開リフト、バッカルファット除去等は、腫れを予防するために顔用の固定バンドを数日着用します。</p>
      <p class="pb-3">帰宅後は冷却ジェルで頬や首を冷やし、ゆっくり休みましょう。固定バンドはクリニックの指示に従って着用し、安静とクーリングを行なって腫れを軽減しましょう。</p>
      
      <h1 class="text-xl font-bold pb-3 pt-5">頭を高く保つ</h1>
      <p class="pb-3">頭を高くして寝るとむくみが軽減します。</p>
      <p class="pb-3">傷口を圧迫するような横向きや下を向いたりする事は避けましょう。</p>
      
      <h1 class="text-xl font-bold pb-3 pt-5">傷口に力を加えない</h1>
      <p class="pb-3">施術直後は糸が馴染んでいないため、強い刺激を加えると糸の引っ掛かり（コグ）が外れてしまう可能性があります。強く押す、擦るなど、傷口に強い刺激を与える行動は避けましょう。</p>
      <p class="pb-3">糸を挿入した部分を必要以上に動かさないようにすることも大切です。</p>

      <h1 class="text-xl font-bold pb-3 pt-5">禁煙</h1>
      <p class="pb-3">タバコには血管を収縮させる作用があります。血管が収縮すると酸素や栄養素の循環が妨げられ、傷口の治りが遅れる可能性があります。さらに、細菌による感染症のリスクも高まります。</p>
      <p class="pb-3">これらの理由から、できる限り禁煙しましょう。</p>

      <h1 class="text-xl font-bold pb-3 pt-5">マッサージ</h1>
      <p class="pb-3">顔のマッサージは刺激となるため、傷口が安定するまでは行わないようにしましょう。傷口の炎症を防ぐため、できるだけ顔には触らないようにしてください。</p>
      
      <h1 class="text-xl font-bold pb-3 pt-5">歯の治療</h1>
      <p class="pb-3">歯の治療は口を大きく開く必要があるため、術後2ヶ月は避けましょう。</p>
      <p class="pb-3">糸リフトを行った場合は、糸が外れたり取れたりしてしまう可能性があります。</p>

      <h1 class="text-xl font-bold pb-3 pt-5">パーマ・ヘアカラー</h1>
      <p class="pb-3">糸リフトは頭皮やこめかみ付近から糸を入れることが多いため、パーマやヘアカラーは傷口が塞がるまでは避けましょう。</p>
      <img src="/assets/hair.jpg" alt="hair-color" class="mt-5 w-1/2">

      <h1 class="text-2xl font-bold pb-2 pt-10">アイテム</h1>
      <hr class="border-t-1 border-gray-300 pb-3">
      <h1 class="text-xl font-bold">ビーズクッション</h1>
      <a href="https://www.amazon.co.jp/Yogibo-%E3%83%A8%E3%82%AE%E3%83%9C%E3%83%BC-Max-%E3%83%80%E3%83%BC%E3%82%AF%E3%82%B0%E3%83%AC%E3%83%BC-%E3%80%90%E5%8F%97%E6%B3%A8%E7%94%9F%E7%94%A3%E5%93%81%E3%80%91/dp/B00XXFFLPI/ref=zg_bs_g_5341886051_d_sccl_2/355-6087128-4752335?psc=1" style="text-decoration: underline;">Amazonで詳細を見る</a>
      <p>Coming soon..URLをクリックしなくても商品ページが表示される予定です</p>

      <h1 class="text-xl font-bold pt-5">吸水シーツ</h1>
      <p>耳のまわりの傷からにじむ程度の出血がみられることがあります。寝ているときにガーゼがずれて枕や枕カバーが汚れるのが心配なら枕を十分覆えるサイズの吸水シーツを用意しましょう。</p>
      <a href="https://www.amazon.co.jp/%E5%90%B8%E6%B0%B4%E3%82%B7%E3%83%BC%E3%83%88-60x60cm-%E9%98%B2%E6%B0%B4%E3%82%B7%E3%83%BC%E3%83%88-%E6%8A%97%E8%8F%8C%E3%83%9D%E3%83%AA%E3%83%9E%E3%83%BC-%E3%81%8A%E3%82%80%E3%81%A4%E3%81%8B%E3%81%88%E3%82%B7%E3%83%BC%E3%83%88/dp/B0BY7QTB1T/ref=sr_1_2_sspa?dib=eyJ2IjoiMSJ9.oQW_sAqyt1o0QGCodFytYOJhI3b9oZC_SYotr54PqswBippjKOON_TqUsEik9NXHsLLIZvayGU3nI9_D8lj9NlRkBWKbKVrBkwAgEfR-WSk9r6ThSMgn94pEvg0H6ul88tET61Wj4Io5vPg1fWTunVoo0Jw87-uSRFIeShYu1YXV2YTQqhGp-gRZW01eWhVSNvCc2qDvOs2Za5o65KSQhD75sMxT8aJErZzVEDSINrryehTQPEqXch8adD9TW19wBJgHsgjQjVeYWw4K6RmbYdZz7BjGe1oBahI5j_VjsvE.-VEAcDfywKYi7flGzw1mvBQ7j59qKm6nBm6U8noRUzY&dib_tag=se&keywords=%E5%90%B8%E6%B0%B4%E3%82%B7%E3%83%BC%E3%83%88&qid=1719929966&sr=8-2-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&psc=1">Amazonで詳細を見る</a>
      <p>Coming soon..URLをクリックしなくても商品ページが表示される予定です</p>

      <h1 class="text-2xl font-bold pb-2 pt-10">服装</h1>
      <hr class="border-t-1 border-gray-300 pb-3">
      <ul class="list-disc pl-5">
        <li>帽子</li>
        <li>前開きの服</li>
        <li>マスク</li>
        <li>ハイネックの服、首元が隠せるスカーフ</li>
        <p>頬や首に内出血がみられる時期は服装などで上手くカモフラージュしましょう。夏は暑苦しくならないような素材を選んでください。</p>
        <img src="/assets/scarf.jpg" alt="scarf" class="mt-5 w-1/2">
        <li>コンシーラー</li>
        <p>頬や首の内出血をカバーします。クリームタイプよりもリキッド、パウダーなど広い範囲にもつけやすく、こすらなくても落としやすいものが良いでしょう。</p>
      </ul>

      <h1 class="text-2xl font-bold pb-2 pt-10">季節</h1>
      <hr class="border-t-1 border-gray-300 pb-3">
      <p class="pb-3">「夏の手術は、汗で感染しやすいので避けた方がいいですか？」</p>
      <p class="pb-3">暑い季節は汗をかきやすく、傷口の衛生が保ちにくいと思われがちですが、現代ではエアコンの普及により室内での快適な過ごし方が可能です。そのため、手術のタイミングはあなたの準備が整ったタイミングが最適です。ダウンタイムをしっかりと確保できる時期を選びましょう。</p>
    </div>
BODY

AreaCategory.create!(
  title: "リフトアップ",
  body_title: "小顔になりたい！そんなあなたへ",
  area_image: "/assets/lift2.jpg",
  body_image: "/assets/liftup_body.jpg",
  body: lift_description
  )

  # ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
  # ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
  # バストの記事
  bust_description = <<-BODY.strip_heredoc
    <div class="flex flex-col justify-start p-6 text-gray-700">
      <a href="#" class="text-3xl font-bold hover:text-gray-700 pb-4">ずっと悩んでいたバストの大きさ・形、これで解消！</a>
      <p href="#" class="text-sm pb-8">
        Published on April 25th, 2024
      </p>
      <h1 class="text-2xl font-bold pb-2">バストの整形一覧</h1>
      <hr class="border-t-1 border-gray-300 pb-3">
      <ul class="list-disc pl-5">
        <li>豊胸（シリコンバッグ）</li>
        <li>豊胸（脂肪注入）</li>
        <li>豊胸（ハイブリッド：シリコン＋脂肪）</li>
        <li>モントゴメリー腺除去</li>
        <li>陥没乳頭形成</li>
        <li>乳輪・乳頭縮小</li>
      </ul>

      <h1 class="text-2xl font-bold pb-2 pt-10">豊胸のダウンタイムは？</h1>
      <hr class="border-t-1 border-gray-300 pb-3">
      <p class="pb-3">豊胸の主なダウンタイム症状は胸の腫れ、むくみ、痛み、違和感などです。</p>
      <p class="pb-3">シリコンバッグの豊胸の場合には、バッグを挿入する際にメスを入れて挿入部分を開くため、挿入部分の傷の痛みが強く出ることがあります。</p>
      <p class="pb-3">ダウンタイムの症状には個人差がありますが、ひどい場合だと手術の翌日は痛みでベットから動くことができない、寝返りをうてない、少しの衝撃でも強い痛みが胸に走るというケースもあります。</p>
      <p class="pb-3">シリコンバッグの豊胸の場合には、挿入するバッグの大きさや挿入部位によってダウンタイムの痛みの強さや期間なども変わってきます。中でも最も痛みが強いと言われているのが大胸筋下（だいきょうきんか）への挿入です。</p>
      <p class="pb-3">痩せ型の方に多い挿入方法で、大胸筋を剥離して挿入する必要があり、手術も複雑であるためダウンタイムも大きくなります。</p>
      <p class="pb-3">痛みで腕を上げることが難しいため、洗髪は手伝ってもらったり、美容院でやってもらうことをおすすめします。</p>

      <h3 class="text-xl font-bold pb-3">シリコンバッグ豊胸のダウンタイム</h3>
      <p class="pb-3">シリコンバッグ豊胸は、他の豊胸手術に比べてダウンタイムが少し長く、1カ月～2カ月と言われています。</p>
      <p class="pb-3">痛み、腫れといった症状が出るのは術後1～2週間程度と言われており、まとまった休暇を取るのがおすすめです。</p>
      <p class="pb-3">また、挿入したバッグが完璧に体に馴染むまでには半年以上の時間がかかります。</p>
      <p class="pb-3">本記事では、主にシリコンバッグ豊胸について紹介していきます。</p>
      <img src="/assets/bust_article2.png" alt="bust" class="mt-5 w-1/2">

      <h1 class="text-2xl font-bold pb-2 pt-10">正しい過ごし方</h1>
      <hr class="border-t-1 border-gray-300 pb-3">

      <h3 class="text-xl font-bold pb-3">下着</h3>
      <p class="pb-3">挿入したバッグは、施術後3か月～半年程度で安定します。それまでに胸を圧迫したり締め付けたりすると、位置がずれることがあるのでご注意ください。</p>
      <p class="pb-3">自己判断でブラジャーを着用せず、医師の指示に従いましょう。</p>
      <img src="/assets/bust_article.png" alt="bust" class="mt-5 w-1/2">
      
      <h3 class="text-xl font-bold pb-3">安静に過ごす</h3>
      <p class="pb-3">痛みなどの症状がひどくなる可能性が高いため、安静にしましょう。</p>
      <p class="pb-3">シリコンバッグ豊胸の手術後は挿入したバッグがずれてしまわないようバストバンドを使用して胸を固定します。固定が必要な期間はクリニックの指示に従うようにしてください。</p>
      <p class="pb-3">重い荷物を持ったり、激しい運動をするのも避けましょう。</p>
      <p class="pb-3">シリコンバッグ豊胸は、メスを用いて行うため傷口が大きくなる可能性が高く、安定するのにも時間がかかります。何かの拍子に出血してしまう可能性もあります。</p>
      <p class="pb-3">ダウンタイムが治まるまでは、体にも大きな負担がかかっている状態です。ダウンタイムの症状が出ている間は無理をせず、ゆっくりとした動きを心がけましょう。</p>

      <h1 class="text-2xl font-bold pb-2 pt-10">シリコンバッグ豊胸の手術後のトラブル</h1>
      <hr class="border-t-1 border-gray-300 pb-3">
      <h3 class="text-xl font-bold pb-3">カプセル拘縮</h3>
      <p class="pb-3">カプセル拘縮は、10人に一人は発症すると言われている代表的なトラブルの一つです。</p>
      <p class="pb-3">挿入したシリコンバッグを体が異物だと認識し、豊胸バッグの周りに被膜が出来てしまいます。</p>
      <p class="pb-3">それ自体は体の正常な動きですが、放置すると被膜がどんどん厚くなり、バッグが締め付けられます。カプセル拘縮は手術後2～3ヶ月で現れる場合もあれば、手術から10年後に現れる場合もあります。</p>
      <p class="pb-3">症状としては、軽くちくちくする違和感、胸が不自然に盛り上がったり、炎症による痛みを伴う場合があります。カプセル拘縮が起こると硬くなるため、ご自身でも気付くと思います。</p>
      <p class="pb-3">カプセル拘縮になる場合は体質の問題が大きく、手術が失敗したからカプセル拘縮になるというわけではありません。</p>

      <h3 class="text-xl font-bold pb-3">石灰化</h3>
      <p class="pb-3">石灰化とは、シリコンバッグの周りに出来た被膜にカルシウムの結晶が付着して固まってしまう現象のことです。</p>
      <p class="pb-3">石灰化が起こるとエコー検査で内部を映すことができないため状況が確認できません。</p>
      <p class="pb-3">バッグの破損の原因などになるわけではなく、20年、30年たって古くなると起こってしまう現象で、石に苔（こけ）が生えるようなイメージです。</p>
      <p class="pb-3">石灰化したからといってバッグを抜く必要はありません。石灰化が起こってもバストの感触が硬くなるわけではありません。</p>

      <h3 class="text-xl font-bold pb-3">傷跡</h3>
      <p class="pb-3">脇を切開してシリコンバッグを挿入するため、手術後の数年間傷跡が残ります。</p>
      <p class="pb-3">傷跡の経過としては、半年から1年は残りますが、1年たてばあまり気にならなくなる程度になるでしょう。</p>
      <p class="pb-3">脇の下の体のシワに沿ってメスを入れるため、時間が経てば経つほど傷はシワと同化して傷跡は目立たなくなります。そして、2年～3年でほとんど気にならなくなるというケースが多いです。</p>

      <h1 class="text-2xl font-bold pb-2 pt-10">アイテム</h1>
      <hr class="border-t-1 border-gray-300 pb-3">
      <h1 class="text-xl font-bold">ビーズクッション</h1>
      <p>起き上がる時に胸に力が加わるため、なるべく仰向けを避けると楽に過ごすことが出来ます。</p>
      <a href="https://www.amazon.co.jp/Yogibo-%E3%83%A8%E3%82%AE%E3%83%9C%E3%83%BC-Max-%E3%83%80%E3%83%BC%E3%82%AF%E3%82%B0%E3%83%AC%E3%83%BC-%E3%80%90%E5%8F%97%E6%B3%A8%E7%94%9F%E7%94%A3%E5%93%81%E3%80%91/dp/B00XXFFLPI/ref=zg_bs_g_5341886051_d_sccl_2/355-6087128-4752335?psc=1" style="text-decoration: underline;">Amazonで詳細を見る</a>
      <p>Coming soon..URLをクリックしなくても商品ページが表示される予定です</p>

      <h1 class="text-xl font-bold pt-5">サポーター</h1>
      <a href="https://www.amazon.co.jp/KASFDBMO-%E4%B9%B3%E6%88%BF%E3%82%B9%E3%82%BF%E3%83%93%E3%83%A9%E3%82%A4%E3%82%B6%E3%83%BC%E3%83%90%E3%83%B3%E3%83%89-%E7%B8%AE%E5%B0%8F%E3%82%B9%E3%83%88%E3%83%A9%E3%83%83%E3%83%97-%E8%83%B8%E3%83%99%E3%83%AB%E3%83%88-%E4%B9%B3%E6%88%BF%E3%82%B5%E3%83%9D%E3%83%BC%E3%83%88/dp/B0D8DNF2XJ/ref=sr_1_33?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&crid=1NPFUN2DXAUCM&dib=eyJ2IjoiMSJ9.NgVhu92wn1zWTzswKLwogZoyLwzJZMLmU_P3wjoEawkGL9_eQF0-w7Qpinfd3Q-kwA4uAlHcl3waUcc3ujtHydrZGVtdXRTvgf50AHUT7-PkCtqejCbl0F3FUFSDz4kOuChu58pUPO5veloYBGJztcuct8c97b0tGFG3XkpPUXTnShPiQBKMmaG0d6nQJYFHKVtZNC7RT5n54y4cL438jIJ8RUvzBzxEVN6KlXgTBk9LiwBb0lk8sVtA-szZZaZ_yBCk-zyqd8H-LcTvWsVZJGJlUgwsShHnw6JN8KskFyc.sK18-qI_khwzVuYZkCUOl6MHrlh8EnuPhf7mgU9VnJQ&dib_tag=se&keywords=%E8%83%B8+%E6%89%8B%E8%A1%93%E5%BE%8C&qid=1719979486&sprefix=%E8%83%B8+%E6%89%8B%E8%A1%93%E5%BE%8C%2Caps%2C229&sr=8-33">Amazonで詳細を見る</a>
      <p>Coming soon..URLをクリックしなくても商品ページが表示される予定です</p>

      <h1 class="text-2xl font-bold pb-2 pt-10">服装</h1>
      <hr class="border-t-1 border-gray-300 pb-3">
      <ul class="list-disc pl-5">
        <li>前開きの服</li>
        <p>1週間程度は着脱しやすい前開きのゆったりとした洋服がおすすめです。</p>
        <p>ニップレスに緩めのキャミソールなども良いでしょう。</p>
      </ul>
    </div>
BODY

AreaCategory.create!(
  title: "バスト",
  body_title: "一生モノの理想バストを手に入れよう",
  area_image: "/assets/bust.png",
  body_image: "/assets/bust_body.jpg",
  body: bust_description
  )

  # ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
  # ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
  # 肌の記事
  skin_description = <<-BODY.strip_heredoc
    <div class="flex flex-col justify-start p-6 text-gray-700">
    <a href="#" class="text-3xl font-bold hover:text-gray-700 pb-4">これであなたも美しい陶器肌に</a>
    <p href="#" class="text-sm pb-8">
      Published on April 25th, 2024
    </p>
    <h1 class="text-2xl font-bold pb-2">肌の施術一覧</h1>
    <hr class="border-t-1 border-gray-300 pb-3">
    <p><strong>脱毛</strong></p>
    <ul class="list-disc pl-5">
      <li>医療脱毛</li>
    </ul>
    <p class="pt-5"><strong>ニキビ、毛穴</strong></p>
    <ul class="list-disc pl-5">
      <li>ダーマペン</li>
      <li>ヴェルヴェッドスキン</li>
      <li>イオン導入、ピーリング</li>
      <li>ハイドラフェイシャル</li>
      <li>アグネス</li>
    </ul>
    <p class="pt-5"><strong>シミ、くすみ、美白</strong></p>
    <ul class="list-disc pl-5">
      <li>レーザートーニング</li>
      <li>ピコフラクショナルレーザー、ピコスポット</li>
    </ul>
    <p class="pt-5"><strong>リフトアップ、コラーゲン生成</strong></p>
    <ul class="list-disc pl-5">
      <li>サマークール</li>
      <li>HIFU</li>
    </ul>
    <p class="pt-5"><strong>しわ</strong></p>
    <ul class="list-disc pl-5">
      <li>ベビーコラーゲン</li>
      <li>水光注射</li>
      <li>ポテンツァ</li>
      <li>リジュラン</li>
      <li>ヒアルロン酸注入</li>
    </ul>
    <p class="pt-5"><strong>ケロイド、ホクロ</strong></p>
    <ul class="list-disc pl-5">
      <li>傷跡修正</li>
      <li>イボ、ホクロ取り（レーザー、切開）</li>
    </ul>

    <h1 class="text-2xl font-bold pb-2 pt-10">医療脱毛</h1>
    <hr class="border-t-1 border-gray-300 pb-3">
    <h1 class="text-xl font-bold pb-2">＜脱毛前日の注意点＞</h1>
    <h3 class="text-lg font-bold pb-2">誤った方法での自己処理</h3>
    <p class="pb-3">毛抜きやワックスを用いた自己処理はやめましょう。</p>
    <p class="pb-3">自己処理には、カミソリや除毛クリーム、電気シェーバーなどがありますが、特に毛抜きやワックスの使用はNGです。</p>
    <p class="pb-3">脱毛のレーザーは、毛根にあるメラニン色素に反応してダメージを与えます。毛抜きやワックスを使って根元から抜いてしまうと、レーザーがうまく反応せず、効果が低下する可能性があります。</p>

    <h3 class="text-lg font-bold pb-3 pt-5">正しい自己処理の方法は？</h3>
    <p class="pb-3">毛抜きは肌への負担が大きく、埋没毛や毛嚢炎などの肌トラブルが起こるおそれがあります。</p>
    <p class="pb-3">カミソリを使用した方法も、カミソリ負けで肌が荒れる場合があります。</p>

    <p class="pb-3 font-bold pt-3">1．肌をピンと張ってシェーバーを当てる</p>
    <p class="pb-1">電気シェーバーを動かす向きと反対向きに肌を張りながら、力を入れずに毛の流れに逆らって剃ります。シェービングの後は肌がデリケートな状態になっているため、化粧水やクリームでの保湿も忘れずに。</p>
    <img src="/assets/shaving.png" alt="shaving" class="mt-5 w-1/2">
    <p class="pb-3 pt-3">また、凸凹しているひじやひざは、肌を傷つけないよう電気シェーバーの角度を細かく変えてください。うなじ、背中、腰、ヒップなどは、一人では手が届きにくく、けがをすると施術ができないため、慎重に行いましょう。鏡で確認しながら処理することがおすすめです。</p>

    <p class="pb-3 font-bold pt-5">2．VIOはハサミでカットしてから処理する</p>
    <p class="pb-3">VIOはハサミで毛を短くカットしてから、毛の流れに逆らって電気シェーバーを当てます。</p>
    <p class="pb-3">はじめから毛流れに逆らってシェーバーを当てると肌を傷つけてしまう可能性があります。ハサミでカットした後は、毛流れに沿ってシェーバーを当てるようにしましょう。ある程度毛が短くなったら（３〜４ミリ）、毛流れに逆らってシェーバーを当てると肌を傷つけず、綺麗に剃ることが出来ます。</p>
    <p class="pb-3">Vラインは希望の形に合わせて毛を処理します。ハイジニーナの場合は、すべての毛を剃っておく必要があります。Iライン・Oラインは鏡で確認しながら少しずつ毛を剃ってください。</p>

    <h3 class="text-xl font-bold pb-3 pt-5">日焼けに注意</h3>
    <p class="pb-3">脱毛のレーザーは黒いメラニン色素に反応します。日焼けすると肌の色にレーザーが反応して、やけどが起こりやすい状態になります。</p>
    <p class="pb-3">日焼けが強い肌には施術を行うことができないため、脱毛期間中は日焼け対策をしましょう。</p>

    <h3 class="text-xl font-bold pb-3 pt-5">制汗剤はNG</h3>
    <p class="pb-3">脱毛前に制汗剤を使用すると、毛穴が塞がり毛穴の奥までレーザーが届かず脱毛効果が低くなる可能性があります。また、脱毛後の肌は敏感な状態なので、制汗剤の刺激により赤み・痒みなどの肌トラブルが起こることもあります。</p>

    <h1 class="text-xl font-bold pb-2 pt-10">＜脱毛当日の注意点＞</h1>
    <ul class="list-disc pl-5">
      <li>保湿する</li>
      <li>毛は抜かない</li>
      <li>日焼けは避ける</li>
      <li>施術当日の入浴は控える</li>
      <li>激しい運動や飲酒は控える</li>
    </ul>

    <h1 class="text-2xl font-bold pb-2 pt-20">レーザー治療</h1>
    <hr class="border-t-1 border-gray-300 pb-3">
    <ul class="list-disc pl-5">
      <li>ダーマペン</li>
      <li>ヴェルヴェッドスキン</li>
      <li>イオン導入、ピーリング</li>
      <li>ハイドラフェイシャル</li>
      <li>アグネス</li>
      <li>レーザートーニング</li>
      <li>ピコフラクショナルレーザー、ピコスポット</li>
    </ul>

    <h1 class="text-xl font-bold pb-2 pt-10">＜ダウンタイムは？＞</h1>

    <p class="pb-3">レーザー治療では、施術内容によって洗顔、洗髪、シャワー、入浴、メイク、運動、飲酒などが制限されることもあります。施術を受ける前にダウンタイムについて必ず確認しておきましょう。</p>
    <p class="pb-3">ダウンタイムの症状や期間は、施術内容によって異なります。以下に代表的な肌治療について、ダウンタイムの目安期間や症状を示します。</p>
    
    <h3 class="text-xl font-bold pt-3">レーザー治療：4日～1週間以上</h3>
    <p class="pb-3">レーザー治療は効果も高い反面、肌への負担が大きく、他の施術と比べてダウンタイムも長い傾向があります。ダウンタイム中は患部をテープで保護する必要があったり、紫外線やメイクを避けなくてはいけない場合もあります。</p>

    <h3 class="text-xl font-bold pt-3">フォトフェイシャル：ほぼなし</h3>
    <p class="pb-3">フォトフェイシャルは、IPL（Intense Pulsed Light）という光を肌に当てることによってシミやそばかすを改善します。痛みなどのダウンタイムがほとんどなく、施術が終わってすぐにメイクをすることも可能です。</p>
    <p class="pb-3">しかし、施術直後の肌は乾燥しやすくデリケートなため、保湿はしっかり行いましょう。</p>

    <h3 class="text-xl font-bold pt-3">ケミカルピーリング：ほぼなし</h3>
    <p class="pb-3">ケミカルピーリングは、ピーリング薬剤を肌に塗布し、古い角質や毛穴の汚れを除去することで肌のターンオーバーを促進する治療です。</p>
    <p class="pb-3">ダウンタイムはほとんどありません。しかし、赤みが出たり、乾燥が生じたりすることがあります。</p>

    <h3 class="text-xl font-bold pt-3">ダーマペン：2〜3日程度</h3>
    <p class="pb-3">ダーマペンは、超極細針で肌に小さな穴を開けます。肌が回復する（自然治癒力）過程でコラーゲンの生成が促され、毛穴やニキビ跡の改善やエイジングケアが期待できます。</p>
    <p class="pb-3">ダーマペンを受けてから2～3日間は、乾燥しやすくなったりヒリヒリ感が出てくる場合もあります。また、針の深さによっては出血を伴うため施術直後には赤みが出ることもあります。洗顔・メイクは、施術後12時間はできません。</p>

    <h3 class="text-xl font-bold pt-3">コラーゲンピールのダウンタイム：ほぼなし</h3>
    <p class="pb-3">コラーゲンピールは、PRX-T33という薬剤をマッサージしながら肌へ浸透させ、コラーゲン増生によって肌にハリや弾力をもたらす施術です。メラニン生成も抑制するため、シミやくすみの改善も期待できます。</p>
    <p class="pb-3">赤みや皮むけなどが起こることもほとんどなく、メイクも当日から可能です。施術から数日後に薄く皮がむける場合もあります。</p>
    
    <h1 class="text-xl font-bold pb-2 pt-10">＜ダウンタイムのまとめ＞</h1>
    <ul>
      <li>フォトフェイシャルやケミカルピーリング、ダーマペンなどはダウンタイムがほとんどなく、日常生活への支障が少ない。</li>
      <li>レーザー治療は、他の治療と比較しダウンタイムが長い傾向にある。</li>
    </ul>

    <h1 class="text-xl font-bold pb-2 pt-10">＜施術後の注意点＞</h1>
    <h3 class="text-lg font-bold pb-3">施術部位への刺激は避ける</h3>
    <p class="pb-3">施術部位には刺激を与えないように注意しましょう。腫れやかゆみ、赤みなどが気になると思いますが、こすったり触ったりしないようにしてください。</p>
    <p class="pb-3">洗顔やメイクを行う場合は優しく丁寧に行いましょう。洗浄力の強いものやスクラブ入りのものは避け、肌に優しい成分のものを使用することがおすすめです。</p>

    <h3 class="text-lg font-bold pb-3 pt-5">血行が良くなる行動は避ける</h3>
    <p class="pb-3">血行が良くなると腫れや炎症が長引いてしまいます。</p>
    <p class="pb-3">入浴や運動、飲酒などは血行が良くなります。入浴が許可されている場合でも短時間で済ませ、激しい運動や飲酒は控えることをおすすめします。</p>

    <h1 class="text-2xl font-bold pb-2 pt-10">服装</h1>
    <hr class="border-t-1 border-gray-300 pb-3">
    <h3 class="text-lg font-bold pb-3">首元が開いた服</h3>
    <p class="pb-3">機械によりますが、HIFUやフォトフェイシャルはジェルを使用します。</p>
    <p class="pb-3">特にHIFUはコースによって顎下や首も施術を行うため、　首元が詰まった服装は避けましょう。</p>

    <h3 class="text-lg font-bold pb-3 pt-5">帽子やサングラス</h3>
    <p class="pb-3">紫外線を浴びると炎症や色素沈着を起こすことがあるため、当日は帽子やサングラス、マスクなどを使用して顔をカバーしましょう。</p>
  </div>
BODY

AreaCategory.create!(
  title: "肌",
  body_title: "お肌の治療ってダウンタイムあるの？",
  area_image: "/assets/skin.png",
  body_image: "/assets/skin_body.png",
  body: skin_description
  )

  # ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
  # ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
  # フィラーの記事
  filler_description = <<-BODY.strip_heredoc
    <div class="flex flex-col justify-start p-6 text-gray-700">
    <a href="#" class="text-3xl font-bold hover:text-gray-700 pb-4">まずはヒアルロン酸で気軽に美しく</a>
    <p href="#" class="text-sm pb-8">
      Published on April 25th, 2024
    </p>
    <h1 class="text-2xl font-bold pb-2">フィラーの施術一覧</h1>
    <hr class="border-t-1 border-gray-300 pb-3">
    <ul class="list-disc pl-5">
      <li>ヒアルロン酸</li>
      <li>コラーゲン</li>
      <li>レディエッセ</li>
      <li>エランセ</li>
      <li>ボトックス</li>
    </ul>
    <p class="pb-3 pt-3">※ここでは注射を使用した治療をフィラーと考え、ボトックスも一覧に表示しています。</p>

    <h1 class="text-2xl font-bold pb-2 pt-10">ヒアルロン酸とは</h1>
    <hr class="border-t-1 border-gray-300 pb-3">
    <p class="pb-5">ヒアルロン酸は、もともと体内に広く存在する物質です。皮膚では、主に皮真皮層に存在し、皮膚の弾力性や潤いを保ちます。しかし、体内のヒアルロン酸は加齢とともに減少していきます。ヒアルロン酸が減った肌は、十分な水分や弾力を保持できず、ハリがなくなり、しわやたるみが発生する原因のひとつとなります。</p>
    <p class="pb-5">ヒアルロン酸注射は、ボリュームが減少した部分にアプローチし、しわやたるみを改善するだけでなく、唇をふくよかにしたり、鼻を高くするなど、パーツ形成もできる治療です。</p>
    <p class="pb-3">ヒアルロン酸は、ヒアルロニダーゼという薬剤を注入することで除去できます。ヒアルロン酸が注入されている部位に薬剤を注射すると、ヒアルロン酸が溶解して液体状になり数日で吸収されていきます。</p>

    <h1 class="text-2xl font-bold pb-2 pt-10">レディエッセとは</h1>
    <hr class="border-t-1 border-gray-300 pb-3">
    <p class="pb-5">レディエッセ注射は注入してから吸収されるまでの期間が長いためヒアルロン酸などの注入剤よりも効果が持続します。 ヒアルロン酸などと比べると持続期間は約2倍以上と言われていますが、その分使用できる箇所が限られています。</p>
    <p class="pb-5">レディエッセはヒアルロン酸と違い、薬で溶解することはできません。除去するには切開して掻きだす必要があります。</p>

    <h1 class="text-2xl font-bold pb-2 pt-10">エランセとは</h1>
    <hr class="border-t-1 border-gray-300 pb-3">
    <p class="pb-5">エランセ（コラーゲンブースト注射）は、PCL（ポリカプロラクトン）を主成分とする注入剤です。溶ける糸などに用いられている成分で、最終的には体内に吸収されます。</p>
    <p class="pb-5">ヒアルロン酸に比べて持続期間が長い注入剤のため一度注射をするとその形を保つことが出来ます。注入した部位のコラーゲン生成を促す（コラーゲンブースター）ことができて、ハリや弾力アップにも効果的ですが、溶解剤がなく溶かせないので修整が困難です。</p>

    <h1 class="text-2xl font-bold pb-2 pt-10">ヒアルロン酸注入後の注意事項</h1>
    <hr class="border-t-1 border-gray-300 pb-3">
    <h3 class="text-xl font-bold pb-3">注入部位を押さない</h3>
    <p class="pb-1">ヒアルロン酸注入直後、強い力で押すとせっかく整えたヒアルロン酸の形が崩れてしまう可能性があります。１か月程度で安定するため、マッサージなどは１か月は控えるようにしましょう。</p>
    <p class="pb-1">あごにヒアルロン酸を注入した場合は、頬杖をついてあごを圧迫する姿勢は避けましょう。</p>
    <img src="/assets/filler_ng.jpg" alt="ng" class="mt-5 w-1/2">

    <h3 class="text-xl font-bold pb-3 pt-10">血行を良くする行動は避ける</h3>
    <p class="pb-1">ヒアルロン酸注入後のメイクは出血が無ければ当日から可能です。</p>
    <p class="pb-1">しかし、湯船やサウナなどで血行が良くなると施術部位に痛みや腫れ、内出血が生じることもあります。激しい運動や飲酒も当日は避けましょう。</p>

    <h3 class="text-xl font-bold pb-3 pt-10">ヒアルロン酸が馴染むまで時間がかかる</h3>
    <p class="pb-1">ヒアルロン酸の種類や部位によって異なりますが、安定するには1〜3週間程度の期間が必要とされています。施術直後の腫れやむくみは失敗ではないのであまり心配しすぎず、様子を見るようにしましょう。</p>

    <h1 class="text-2xl font-bold pb-2 pt-10">ボトックスとは</h1>
    <hr class="border-t-1 border-gray-300 pb-3">
    <p class="pb-1">ボトックス注射は、しわや筋肉の緊張を和らげて、しわや張り感、汗や臭いなどの症状に対して、幅広く改善が期待できる治療です。</p>

    <h3 class="text-lg font-bold pb-3 pt-10">ボトックスの効果はどのくらいで出るの？</h3>
    <p class="pb-1">シワ・・・注射後2〜3日後に効果が出始め、約1〜2週間で効果がピークに達する。</p>
    <p class="pb-1">小顔（エラなど）・・・効果が出るまでに少し時間がかかるため、注射後1ヵ月程度で効果が最大となる。</p>
    <p class="pb-1">多汗症・・・2〜3週間程度で効果が最大になります。</p>
    <img src="/assets/filler_q.jpg" alt="question" class="mt-5 w-1/2">

    <h1 class="text-2xl font-bold pb-2 pt-10">ボトックス注射のダウンタイム</h1>
    <hr class="border-t-1 border-gray-300 pb-3">
    <p class="pb-1">針を刺すため、注射部位に内出血や腫れが生じる可能性がありますが、1週間程度で軽快します。</p>

    <h1 class="text-2xl font-bold pb-2 pt-10">ボトックス注射後の注意事項</h1>
    <hr class="border-t-1 border-gray-300 pb-3">
    <h3 class="text-xl font-bold pb-3">注入部位を揉んだり擦ったりしない</h3>
    <p class="pb-1">当日から1週間はこすったり強く揉んだりしないでください。ボトックスの効果が薄くなったり効き目が出にくくなったりする可能性があるため、できるだけ手を触れないようにして過ごしましょう。</p>

    <h3 class="text-xl font-bold pb-3 pt-10">激しい運動や飲酒、サウナは避ける</h3>
    <p class="pb-1">体温が上がるような激しい運動や飲酒は避けるようにしてください。ボトックスの主成分は、熱によって変質したり不活性化する性質を持っています。ボツリヌストキシン毒素が完全に失活する温度は約80度と言われています。体温がそこまで上がることはありませんが、効果を低減させないためにも激しい運動は避けましょう。このように、運動、飲酒、高温の入浴はボツリヌストキシン製剤の働きを妨げてしまうため、極力避けましょう。</p>

    <h3 class="text-xl font-bold pb-3 pt-10">ボトックス直後のレーザー治療は避ける</h3>
    <p class="pb-1">ボトックス注入部位に、レーザー照射を行うのは避けましょう。HIFUのように超音波を使った治療やサーマクールのようなレーザー治療は、皮膚組織に熱を加え筋肉を刺激したりコラーゲンの生成を促したりします。皮膚や筋肉が部分的に高温になることがあり、ボトックスの効果が失われる可能性もあります。ボトックスとレーザー治療が併用できるかどうか、事前にクリニックへ相談しましょう。</p>

    <h1 class="text-2xl font-bold pb-2 pt-10">服装</h1>
    <hr class="border-t-1 border-gray-300 pb-3">
    <ul class="list-disc pl-5">
      <li>縁が太いメガネやサングラス</li>
      <li>帽子</li>
      <li>マスク</li>
    </ul>
  </div>
BODY

AreaCategory.create!(
  title: "フィラー",
  body_title: "ヒアルロン酸を注入した後に気を付けることは？",
  area_image: "/assets/filler1.png",
  body_image: "/assets/filler_body.jpg",
  body: filler_description
  )