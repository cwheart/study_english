class Rest::Word < Grape::API
  resources :words do
    desc "分页获取单次"
    params do
      optional :page, :type => Integer, :desc => "页数"
    end
    get '/' do
      present result: 1
    end
  end
end
