class Property < ApplicationRecord
  include AASM

  aasm do
    state :unverified, initial: true
    state :verified
    state :published
    state :archived
    state :rejected

    # after_all_transactions :log_state_change

    event :verify do
      transitions from: [:unverified], to: :verified
    end

    event :reject do
      transitions from: [:unverified], to: :rejected
    end

    event :reverify do
      transitions from: [:verified], to: :unverified
    end

    event :publish do
      transitions from: [:verified], to: :published
    end

    event :unpublish do
      transitions from: [:published], to: :verified
    end

    event :archive do
      transitions from: [:published, :verified, :unverified], to: :archived
    end
  end

  validates :name, :presence => true
  validates :address, :presence => true
  validates :city, :presence => true
end
