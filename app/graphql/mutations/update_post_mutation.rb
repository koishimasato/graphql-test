Mutations::UpdatePostMutation = GraphQL::Relay::Mutation.define do
  name "UpdatePostMutation"
  return_field :post, Types::PostType

  input_field :id, !types.ID
  input_field :subject, !types.String

  resolve ->(obj, inputs, ctx) {
    begin
      post = ctx[:current_user].posts.find(inputs.id)
      post.subject = inputs.subject
      post.save
    rescue => e
      return GraphQL::ExecutionError.new(e.message)
    end

    { post: post }
  }
end
