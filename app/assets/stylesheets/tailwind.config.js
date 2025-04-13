export default {
    content: [
        './app/views/**/*.erb',
        './app/helpers/**/*.rb',
        './app/assets/stylesheets/**/*.css',
        './app/javascript/**/*.js'
    ],
    theme: {
        extend: {
            fontFamily: {
                'typewriter': ['Cutive Mono', 'monospace'],
                'handwritten': ['Indie Flower', 'cursive'],
                'neat-hand': ['Architects Daughter', 'cursive']
            }
        },
    },
    plugins: [],
}