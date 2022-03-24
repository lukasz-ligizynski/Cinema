class DeleteSeanceJob
  include Sidekiq::Job

  def perform(id: )
    seance = Seance.find(id)
    seance.delete
  end
end
