import SwiftUI

struct HomeView: View {
    
    @State private var selectedItem: CategoryModel? = nil
    @State private var blur = false
    
    @State private var columns = [
        GridItem(.flexible(), spacing: 0),
        GridItem(.flexible(), spacing: 0)
    ]
    
    var body: some View {
    
        VStack {
            if self.selectedItem == nil {
                Header()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 0) {
                        ForEach(CardModel.colors) { cardModel in
                            VStack {
                                GeometryReader { geo in
                                    CardView(colors: cardModel.colors)
                                        .rotation3DEffect(.degrees(-Double(geo.frame(in: .global).minX) / 15), axis: (x: 0, y: 1, z: 0))
                                }
                                .frame(width: 250, height: 250)
                            }
                        }
                    }
                }
            }
            
            ZStack {
                LazyVGrid(columns: columns, spacing: 10) {
                    ForEach(CategoryModel.categories) { item in
                        CategoryView(item: item)
                            .onLongPressGesture {
                                tapToCategory(item: item)
                            }
                    }
                }
                .zIndex(1)
                
                if blur {
                    VisualBlurEffect(uiVisualEffect: UIBlurEffect(style: .systemUltraThinMaterial))
                        .edgesIgnoringSafeArea(.all)
                        .onTapGesture {
                            tapToBack()
                        }
                        .zIndex(2)
                }
                
                if let selectedItem = self.selectedItem {
                    CategoryDetailView(item: selectedItem)
                        .zIndex(3)
                }
            }
            
            Spacer()
        }
        .background(Color.gray.opacity(0.05))
    }
    
    @ViewBuilder
    private func Header() -> some View {
        HStack {
            Text("Welcome back, \nEgor!")
                .font(.system(size: 22, weight: .bold, design: .default))
            
            Spacer()
            
            ZStack {
                Circle()
                    .foregroundColor(Color.blue)
                
                Image("memoji")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }
            .frame(width: 55, height: 55)
        }
        .padding([.trailing, .leading])
    }
    
    func tapToBack() {
        withAnimation(.easeInOut) {
            self.blur = false
        }
        
        DispatchQueue.main.async {
            withAnimation(.easeInOut) {
                self.selectedItem = nil
            }
        }
    }
    
    func tapToCategory(item: CategoryModel) {
        withAnimation(.easeInOut) {
            self.selectedItem = item
        }
        
        DispatchQueue.main.async {
            withAnimation(.easeInOut) {
                self.blur = true
            }
        }
    }
}

//#Preview {
//    HomeView()
//}
