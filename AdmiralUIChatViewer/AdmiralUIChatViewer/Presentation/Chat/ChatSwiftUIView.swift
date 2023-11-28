//
//  SwiftUIChatViewController.swift
//  ExampleiOS
//
//  Created on 16.08.2021.
//

import SwiftUI
import UniformTypeIdentifiers
import AdmiralTheme

struct ChatSwiftUIView: View {

    // MARK: - Layout
    
    var body: some View {
        NavigationView {
            List {
                ForEach(SwiftUIChatItem.allCases, id: \.self) { item in
                    NavigationLink(destination: view(for: item)) {
                        HStack(alignment: .center) {
                            Text(item.title)
                                .font(.headline)
                            Spacer()
                        }
                    }
                }
            }
        }
        .navigationTitle("Список элементов")
    }

    // MARK: - Private methods

    @ViewBuilder
    private func view(for type: SwiftUIChatItem) -> some View {
        switch type {
        case .input:
            SwiftUIChatInputView()
        case .textMessage:
            SwiftUITextMessageView()
        case .textOperation:
            SwiftUITextOperationView()
        case .uploadingPhoto:
            SwiftUIUploadingPhotoView()
        case .uploadingFile:
            SwiftUIUploadingFileView()
        }
    }

}

