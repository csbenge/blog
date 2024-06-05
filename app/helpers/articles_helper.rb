module ArticlesHelper
    
    def getArticleUser(id)
        user = User.find(id)
        user
    end
    
    def getArticleUserName(id)
        user = User.find(id)
        user.name
    end
end
