Types::UserType = GraphQL::ObjectType.define do
  name "User"
  description 'ユーザー'

  field :id, !types.ID, 'ID'
  field :name, !types.String, '名前'
  field :email, !types.String, 'メールアドレス'
  connection :posts, !Types::PostType.connection_type, '投稿リスト'
end

