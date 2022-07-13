/* 
    This file will set some nice default option when starting a new web page such as
    * Keeps footer at the bottom of window but allows content to push it down
    * Remove margin
    * Remove padding
    * Sets a line-height to space lines out better
*/

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

html {font-size: 100%;} 

body {
    display: flex;
    font-weight: 400;
    line-height: 1.75;
    min-height: 100vh;
    background: #DDDDDD;
    font-family: monospace;
    flex-direction: column;
}

p {
    margin-bottom: 1rem;
}

h1, h2, h3, h4, h5 {
    font-weight: 400;
    line-height: 1.3;
    margin: 3rem 0 1.38rem;
}

h1 {
    margin-top: 0;
    font-size: 3.052rem;
}

h2 {font-size: 2.441rem;}

h3 {font-size: 1.953rem;}

h4 {font-size: 1.563rem;}

h5 {font-size: 1.25rem;}

main {
    margin: 0 auto;
    display: block;
}

img {
    height: auto;
    max-width: 100%;
}

input,
select,
button,
textarea {
    font: inherit;
}

footer {
    margin-top: auto;
}
