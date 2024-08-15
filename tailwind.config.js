module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js',
    'node_modules/preline/dist/*.js'
  ],
  theme: {
    extend: {
      fontFamily: {
        ttl: ['Zen Kaku Gothic Antique', 'sans-serif'],
        main: [
          'Times New Roman', 'serif',
          'Hiragino Mincho Pro', 'ヒラギノ明朝 Pro',
          'Yu Mincho', '游明朝',
          'MS PMincho', 'MS P明朝',
          'MS Mincho', 'MS 明朝'
        ]
      },
      colors: {
        theme: {
          main: '#008742',
          font: '#333333',
          bg: '#FCF5E9',
        },
        // ここに透過度の設定を追加
        backgroundColor: {
          'white-25': 'rgba(255, 255, 255, 0.25)', // 25%の透過度の白色
          'bg-opacity-25': 'rgba(252, 245, 233, 0.25)', // 25%の透過度の特定の背景色
        },
      },
      width: {
        '128': '32rem',   // 512px
        '144': '36rem',   // 576px
        '160': '40rem',   // 640px
        '176': '44rem',   // 704px
        '192': '48rem',   // 768px
        // 必要に応じて追加のカスタム幅を定義
      },
    },
  },
  plugins: [
    require('preline/plugin')
  ],
};