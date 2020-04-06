{"filter":false,"title":"user.rb","tooltip":"/Labs/blog/app/models/user.rb","undoManager":{"mark":0,"position":0,"stack":[[{"start":{"row":0,"column":0},"end":{"row":3,"column":0},"action":"remove","lines":["class User < ApplicationRecord","  has_secure_password","end",""],"id":2},{"start":{"row":0,"column":0},"end":{"row":22,"column":0},"action":"insert","lines":["class User < ApplicationRecord","    has_many :articles","    ","    VALID_EMAIL_REGEX = /A[\\w+\\-.]+@[a-z\\d\\-]+(\\.[a-z\\d\\-]+)*\\.[a-z]+\\z/i","    before_save { self.email = email.downcase }","    ","    validates :name,","        presence: true,","        length: { maximum: 12 }","    ","    validates :email,","        presence: true,","        length: { maximum: 255 },","        format: { with: VALID_EMAIL_REGEX },","        uniqueness: { case_sensitive: false }","        ","    validates :password,","        presence: true,","        length: { minimum: 6 }","        ","    has_secure_password","end",""]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":22,"column":0},"end":{"row":22,"column":0},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1586142560948,"hash":"2012c95a4edd1bc4c1f6954dd59ea91b4b71718e"}