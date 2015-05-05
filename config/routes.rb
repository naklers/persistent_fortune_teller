Rails.application.routes.draw do
  get("/",        { :controller => "fortunes", :action => "lucky" })

  get("/lucky_numbers",   { :controller => "fortunes", :action => "lucky" })
  get("/unlucky_numbers", { :controller => "fortunes", :action => "unlucky" })
  get("/random/:lower/:upper",   { :controller => "fortunes", :action => "range" })

  # VARIABLE ROUTES
  # =======================

  get("/signs/:the_sign",         { :controller => "zodiacs", :action => "sign" })
  get("/creatures/:the_creature", { :controller => "zodiacs", :action => "creature" })
  get("/zodiacs/view/:the_id",         { :controller => "zodiacs", :action => "id" })

  # ALL ZODIACS
  get("/zodiacs",         { :controller => "zodiacs", :action => "index" })

  get("/zodiacs/new",     { :controller => "zodiacs", :action => "new" })
  get("/zodiacs/create",  { :controller => "zodiacs", :action => "create_row" })
  get("/zodiacs/delete/:the_id",  { :controller => "zodiacs", :action => "delete_row" })

end
