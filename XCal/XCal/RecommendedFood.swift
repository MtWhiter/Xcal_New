import SwiftUI

struct RecommendedFood: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 1) {
                Text("Recommended🤩")
                    .bold()
                    .foregroundColor(.blue)
                    .font(.title)
                    .frame(maxWidth: .infinity,alignment:.leading)
                
            }
            Spacer()
            VStack(alignment: .leading,spacing: 1) {
                Image("Tuna")
                    .resizable()
                    .frame(width: 155, height: 150)
                    .clipShape(Rectangle())
                    .overlay{Rectangle().stroke(lineWidth: 1)}
                Text("Tuna Salad                         Salmon Steak")
                    .font(.subheadline)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
            }
            .padding([.leading], -95.0)

            Spacer()
            
            VStack(alignment: .leading, spacing: 5) {
                Image("Salmonsteak")
                    .resizable()
                    .frame(width: 155, height: 150)
                    .clipShape(Rectangle())
                    .overlay{Rectangle().stroke(lineWidth: 1)}
                
                
                    .padding([.leading], 140.0)
                    .padding([.top],-177)
                
                
            }
            VStack(alignment: .leading, spacing: 15) {
                Text("Steak🥩")
                    .bold()
                    .foregroundColor(.blue)
                    .font(.title)
                    .frame(maxWidth: .infinity,alignment:.leading)
                    
                
            }
            
            VStack {
                Image("Porksteak")
                    .resizable()
                    .frame(width: 155, height: 150)
                    .clipShape(Rectangle())
                    .padding([.leading], -180)
                    Spacer()
                    
            }
            VStack(alignment: .leading, spacing: 20) {
                Text("Pork")
                    .font(.subheadline)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding([.leading], -175)
                    .padding([.top],-70)
                Spacer()
            }
            
            
            
           
        }
        .padding()
    }
        
}

struct RecommendedFood_Preview: PreviewProvider {
    static var previews: some View {
        RecommendedFood()
    }
}
