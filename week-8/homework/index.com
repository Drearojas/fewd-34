<main>
  <form id="movie-search-form">
    <input type="text" id="query" placeholder="Movie title">
    <button type="submit">Search</button>
  </form>

  <ul id="movie-list">
  </ul>
</main>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

<script>
var sampleResult = {
  "Search": [
    {
      "Title": "Cool Runnings",
      "Type": "movie",
      "Year": "1993",
      "imdbID": "tt0106611"
    }
  ]
}
$("<li>").text(" ").addClass("").appendTo("ul")

$("button".on("click", doSomething)
</script>

<style>
  * { box-sizing: border-box; }
  body {
    margin: 0;
    background: #f1f0f5;
    font-family: sans-serif;
    font-size: 18px;
    line-height: 1.4em;
  }
  main {
    margin: 2em auto;
    box-shadow: 0 5px 30px rgba(0, 0, 0, 0.2);
    background: white;
    padding: 2em 3em;
    max-width: 600px;
  }
  input,
  button {
    border: 1px solid rgba(0, 0, 0, 0.2);
    border-bottom-width: 2px;
    border-radius: 5px; font-size: inherit;
    padding: .5em 1em;
    cursor: pointer;
  }
  input {
    width: 70%;
  }
  button {
    color: white;
    width: 28%;
    background-color: #04d78b;
  }
  form,
  ul {
    margin-bottom: 0;
    margin-top: 0;
  }
  li {
    margin-top: 0.75em;
    padding-top: 0.75em;
  }
</style>
