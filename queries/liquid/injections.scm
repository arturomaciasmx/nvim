; extends
(style_statement
  (style_content) @injection.content
  (#set! injection.language "css"))

((template_content) @injection.content
 (#set! injection.language "html"))
