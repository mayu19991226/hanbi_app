module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],
  theme: {
    extend: {
      // フォントファミリーを追記
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
      // カラーを追記
      colors: {
        theme: {
          main: '#008742',
          font: '#333333',
          bg: '#FCF5E9',
        }
      }
    }
  },
  plugins: []
}