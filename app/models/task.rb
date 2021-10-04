class Task < ApplicationRecord
  belongs_to :project
  validates :status, inclusion: { in: ['not-started', 'in-progress', 'complete'] }

  STATUS_OPTIONS = [
    ['Not Started', 'not-started'],
    ['In Progress', 'in-progress'],
    ['Complete', 'complete']
  ]
end
