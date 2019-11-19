class ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user #the current user
    @record = record #record refer to the class been called on authorize Restaurant
  end

  def index?
    false
  end

  def show?
    false
  end

  def create?
    false
  end

  def new?
    create? #same rule as create
  end

  def update?
    false
  end

  def edit?
    update?
  end

  def destroy?
    false
  end

  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope.all #in index you return the scope 
    end
  end
end
