import SwiftUI

/// Renders one session's worth of rows in Today's list -- each activity in
/// the session keeps its own independently-completable row and its own
/// leading swipe action -- "Complete" while it's actually completable right
/// now, "Bonus" otherwise (upcoming, already resolved, or gap-blocked), so
/// the swipe never offers to double-complete a live window.
struct SessionCardView: View {
    let occurrences: [ExerciseOccurrence]
    var now: Date
    var showActions: Bool
    var onComplete: (ExerciseOccurrence) -> Void
    var onBonus: (ExerciseOccurrence) -> Void

    var body: some View {
        ForEach(occurrences) { occurrence in
            TodayOccurrenceRow(
                occurrence: occurrence,
                now: now,
                onComplete: showActions ? { onComplete(occurrence) } : nil
            )
            .swipeActions(edge: .leading) {
                if CompletionService.availability(for: occurrence, now: now) == .available {
                    Button {
                        onComplete(occurrence)
                    } label: {
                        Label("Complete", systemImage: "checkmark.circle.fill")
                    }
                    .tint(.green)
                } else if occurrence.activity != nil {
                    Button {
                        onBonus(occurrence)
                    } label: {
                        Label("Bonus", systemImage: "plus.circle.fill")
                    }
                    .tint(.purple)
                }
            }
        }
    }
}
