import Foundation

/// Short motivational copy, grouped by where in the Today flow it shows up
/// so the tone matches the moment: a general pep talk for the day, a nudge
/// right before an active window, and a celebration right after completing.
enum Encouragement {
    static let daily = [
        "You've got this today.",
        "One step at a time -- let's go.",
        "Small wins add up. Today's one of them.",
        "Show up for yourself today.",
        "Today's a great day to keep the streak alive.",
        "Progress, not perfection.",
        "Every rep counts. Let's go.",
        "You didn't come this far to stop now.",
        "Discipline beats motivation. Show up anyway.",
        "Today is a fresh set of reps.",
        "Just today. That's all you have to win.",
        "Your future self is cheering you on.",
        "Make today count.",
        "Strong body, clear mind. Let's build both.",
        "A little effort today beats a lot of regret tomorrow.",
    ]

    static let preActivity = [
        "You can do this -- go get it.",
        "A few minutes now, worth it later.",
        "Just get started, momentum does the rest.",
        "Future you is already proud.",
        "This one's yours. Go.",
        "You've done harder things than this.",
        "One activity, all in.",
        "Let's make it happen.",
        "No excuses, just reps.",
        "Show up. That's the whole job.",
    ]

    static let completion = [
        "Nice work! \u{1f4aa}",
        "You're crushing it!",
        "That's how it's done!",
        "One more in the books!",
        "Boom! Done.",
        "Consistency wins. \u{1f525}",
        "You showed up. That counts.",
        "Another one banked.",
        "That's the way!",
        "Look at you go!",
        "Checked off. Well earned.",
    ]

    static func random(from pool: [String]) -> String {
        pool.randomElement() ?? pool[0]
    }
}
