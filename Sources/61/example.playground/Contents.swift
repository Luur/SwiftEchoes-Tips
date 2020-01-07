import UIKit
import XCTest

struct Note {
    var id: Int
    var title: String
    var body: String
}

class NotesViewModel {

    static func all() -> [Note] {
        return [
            Note(id: 0, title: "first_note_title", body: "first_note_body"),
            Note(id: 1, title: "second_note_title", body: "second_note_body"),
        ]
    }
}

func testGetFirstNote() throws {
    let notes = NotesViewModel.all()
    let firstNote =  try XCTUnwrap(notes.first)
    XCTAssertEqual(firstNote.title, "first_note_title")
}

func testGetFirstNote2() {
    let notes = NotesViewModel.all()
    if let firstNote = notes.first {
        XCTAssertEqual(firstNote.title, "first_note_title")
    } else {
        XCTFail("Failed to get first note.")
    }
}
