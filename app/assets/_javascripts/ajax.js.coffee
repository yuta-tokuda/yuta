init = ->
  #ajax通信に成功したタイミングで実行
    $('#ajax_form').on 'ajax:success', (e,data) ->
      #<ul id="result">要素の配下を空に
      $('#result').empty()
      #取得したデータをもとに<li>を生成
      $.each data, ->
        $('#result').append(
          $('<li></li>').append(
            $('<a></a>').attr('href', 'http://www.wings.msn.to/index.php/-/A-03'
+ @isbn).append(@title)
           )
        )  

#ページロード時にinit関数実行
$(document).ready(init)
$(document).on('page:change', init)

init = ->
  $(document).ajaxStart ->
    $('#progress').html '通信中...'
  .ajaxComplete ->
    $('#progress').html ''