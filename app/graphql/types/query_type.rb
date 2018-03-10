Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  description 'クエリルート'

  connection :users, !Types::UserType.connection_type

  field :user, !Types::UserType do
    description 'current_userへアクセス可能'
    resolve ->(_obj, _args, ctx) {
      ctx[:current_user]
    }
  end
end
