module CommentsHelper
    def getCommentUserName(id)
        user = User.find(id)
        user.name
    end
end
