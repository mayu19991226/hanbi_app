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
      <p class="pb-3"></p>

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