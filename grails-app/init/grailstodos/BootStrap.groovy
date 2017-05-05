package grailstodos

import conk.Task
import conk.Owner
import conk.Category

class BootStrap {

    def init = { servletContext ->

      // Create categories
      def errands = new Category(name: "Errands").save()
      def chores = new Category(name: "Chores").save()
      def shopping = new Category(name: "Groceries").save()

      // Add an owner
      def luis = new Owner(name: "Luis").save()
      def chris = new Owner(name: "Chris").save()


      // Create tasks that belong to an owner and a category
      new Task(name: "buy wine", category: shopping, owner: luis).save()
      new Task(name: "buy head cream", category: errands, owner: chris).save()
    }

    def destroy = {
    }
}
