//
//  tasks.swift
//  greenable
//
//  Created by Anushree RS on 7/29/25.
//
// Tasks.swift
// Tasks.swift
import SwiftUI
import SwiftData
struct tasks: View {
    @Query private var leafPoints: [LeafPoint]
    @Environment(\.modelContext) private var context
    @State private var newTask = ""
    @State private var level = "seed"
    let seedTask = [
        "Be mindful of your water usage today!",
        "Be mindful of your electricity usage today!",
        "Be mindful of your plastic usage today!",
        "Be mindful of your gas output today!",
        "Be mindful of your trash output today!",
        "Watch a reel about nature!",
        "Watch a reel about wildlife!",
        "Watch a reel about an environmentally-friendly business!",
        "Watch a reel about recent environmentally-friendly efforts!",
        "Tell one person to do the task you had yesterday!"
    ]
    let sproutTask = [
        "Use less water than you did yesterday!",
        "Use less electricity than you did yesterday!",
        "Use and open less plastic than you did yesterday!",
        "Use gas less than you did yesterday!",
        "Output less trash than you did yesterday!",
        "Watch a video about nature!",
        "Watch a video about wildlife!",
        "Watch a video about an environmentally-friendly business!",
        "Watch a video about recent environmentally-friendly efforts!",
        "Tell two people to do the task you had yesterday!"
    ]
    let saplingTask = [
        "Don't let your water run for more than a total of 15 minutes today!",
        "Don't turn on your lights unless it's after sunset or the room has no windows!",
        "Don't use any single-use plastic today!",
        "Walk, bike, use public transportation, or stay at home today!",
        "Use only washable cloths today!",
        "Watch a documentary about nature!",
        "Watch a documentary about wildlife!",
        "Watch a documentary about an environmentally-friendly business!",
        "Watch a documentary about recent environmentally-friendly efforts!",
        "Tell five people to do the task you had yesterday!"
    ]
    let treeTask = [
        "Don't let your water run for more than a total of 8 minutes today!",
        "Go back to the Paleolithic Era! Don't use any electricity, even at night. Burn some candles, light a fire, or immerse yourself in darkness.",
        "Brainstorm 3 things in your life you can switch out for non-plastic versions!",
        "Take some close people and walk/bike/publicly transport to the park for an impromptu picnic day!",
        "Spend the day outside in your area collecting litter and sorting them into recycling or trash!",
        "Watch a documentary about nature and tell 1 other person all about it!",
        "Watch a documentary about wildlife and tell 1 other person all about it!",
        "Watch a documentary about an environmentally-friendly business and tell 1 other person all about it!",
        "Watch a documentary about recent environmentally-friendly efforts and tell 1 other person all about it!",
        "Tell 10 people to do the task you had yesterday!"
    ]
    var body: some View {
        NavigationStack {
            List {
                ForEach(leafPoints) { task in
                    Text(task.point)
                }
                .onDelete(perform: deleteTask)
            }
            .navigationTitle("More Tasks")
            .safeAreaInset(edge: .bottom) {
                VStack(alignment: .center, spacing: 20) {
                    Text("Add task?")
                        .font(.headline)
                    TextField("Click here!", text: $newTask)
                        .textFieldStyle(.roundedBorder)
                    Button("Save") {
                        let task = LeafPoint(point: newTask)
                        context.insert(task)
                        newTask = ""
                    }
                    .bold()
                    Button("Generate Random Task") {
                        generateTask(for: level)
                    }
                    HStack(){
                        TextField("Enter your level (seed, sprout, sapling, tree)", text: $level)
                            .textFieldStyle(.roundedBorder)
                        //Button("Seed")
                    }
                }
                .padding()
                .background(.bar)
            }
        }
    }
    func generateTask(for level: String) {
        let num = Int.random(in: 0..<10)
        switch level.lowercased() {
        case "seed":
            newTask = seedTask[num]
        case "sprout":
            newTask = sproutTask[num]
        case "sapling":
            newTask = saplingTask[num]
        case "tree":
            newTask = treeTask[num]
        default:
            newTask = "There is an error, please solve!"
        }
    }
    func deleteTask(at offsets: IndexSet) {
        for index in offsets {
            let taskToDelete = leafPoints[index]
            counter += 1
            context.delete(taskToDelete)
        }
    }
}
#Preview {
    tasks()
        .modelContainer(for: LeafPoint.self, inMemory: true)
}
