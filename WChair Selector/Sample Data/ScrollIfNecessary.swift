//
// ----------------------------------------------
// Original project: WChair Selector
// by  Stewart Lynch on 2024-06-02
//
// Follow me on Mastodon: @StewartLynch@iosdev.space
// Follow me on Threads: @StewartLynch (https://www.threads.net)
// Follow me on X: https://x.com/StewartLynch
// Follow me on LinkedIn: https://linkedin.com/in/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch
// ----------------------------------------------
// Copyright © 2024 CreaTECH Solutions. All rights reserved.


import SwiftUI

struct ScrollIfNecessary: ViewModifier {
    func body(content: Content) -> some View {
        ViewThatFits {
            content
            ScrollView {
                content
            }
        }
    }
}


extension View {
    func scrollIfNecessar() -> some View {
        modifier(ScrollIfNecessary())
    }
}
