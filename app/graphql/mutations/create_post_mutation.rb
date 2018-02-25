Mutations::CreatePostMutation = GraphQL::Relay::Mutation.define do
  name "CreatePostMutation"
  return_field :post, Types::PostType

  input_field :subject, !types.String

  resolve ->(obj, inputs, ctx) {
    begin
      post = ctx[:current_user].posts.build
      post.subject = inputs.subject
      post.save
    rescue => e
      return GraphQL::ExecutionError.new(e.message)
    end

    { post: post }
  }
end
