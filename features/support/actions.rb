def scroll_to_element(elem)
    page.execute_script('arguments[0].scrollIntoView();', elem)
  end