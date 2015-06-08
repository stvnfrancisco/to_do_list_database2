require('rspec')
require('to_do_list')

describe(Task) do
  describe("#description") do
    it("lets you give a description") do
      test_task = Task.new("scrub the zebra")
      expect(test_task.description()).to(eq("scrub the zebra"))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Task.all()).to(eq([]))
  end
end
  describe("#save") do
    it('adds task to the array saved tasks') do
      test_task = Task.new('wash the lion')
      test_task.save()
      expect(Task.all()).to(eq([test_task]))
    end
  end
  describe('.clear') do
    it('empties out all of the saved tasks') do
      Task.new('wash the lion').save()
      Task.clear()
      expect(Task.all()).to(eq([]))
    end
  end
end
