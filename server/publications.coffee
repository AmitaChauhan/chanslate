Meteor.publish('chanslateMessages', ->
    count = ChanslateMessages.find().count()
    skip = Math.max(0, count - 500)
    ChanslateMessages.find({}, {
        sort:
            at: 1
        skip: skip
    })
)