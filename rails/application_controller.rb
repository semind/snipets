# yet another t(translate) function
# コントローラとアクションで名前空間を自動で補完するtranslate

helper_method :ya_t
def ya_t(key, vals = {})
  options = {:scope => params[:controller].split('/') << params[:action]}
  options = vals.merge(options)
  t key, options
end
