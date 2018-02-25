Mutations::DestroyPostMutation = GraphQL::Relay::Mutation.define do
  name "DestroyPostMutation"

  return_field :post, Types::PostType

  input_field :id, !types.ID

  resolve ->(obj, inputs, ctx) {
    begin
      post = ctx[:current_user].posts.find(inputs.id)
      post.destroy
    rescue => e
      return GraphQL::ExecutionError.new(e.message)
    end

    { post: post }
  }
end
