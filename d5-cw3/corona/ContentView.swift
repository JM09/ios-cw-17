//
//  ContentView.swift
//  corona
//
//  Created by Shaimaa on 07/02/2022.
//

import SwiftUI


// يجب عمل هيكل وكائنات من الهيكل


struct ContentView: View {
    var body: some View {
        ZStack{
            Color.gray
                .opacity(0.3)
                .ignoresSafeArea()
            VStack{
                Image("corona")
                    .resizable()
                    .scaledToFit()
                Text("حالات كورونا الجديدة")
                    .font(.system(size: 30, weight: .bold, design: .default))
                    .padding()
                ForEach(people, id: \.id) { i in
                    VStack{
                        
                        Text("\(i.fullName)")
                        
                        Text("\(i.area)")
                        
                        Text("\(i.numberOfDoses)")
                        
                        Divider()
                    }
                    
                    }
                // name of new cases
//                VStack{
//        // الحالة الأولى
//                // الاسم
//                    Text("\(people[0].fullName)")
//// المنطقة
//                Text("\(people[0].area)")
//                    // عدد الجرعات
//               Text("\(people[0].numberOfDoses)")
//
//                Divider()
//                }
//                VStack{
//        // الحالة الثانية
//                // الاسم
//               Text("\(people[1].fullName)")
//                // المنطقة
//               Text("\(people[1].area)")
//    // عدد الجرعات
//               Text("\(people[1].numberOfDoses)")
//
//                Divider()
//                }
//                VStack{
//              // الحالة الثالثة
//                      // الاسم
//                     Text("\(people[2].fullName)")
//                      // المنطقة
//                     Text("\(people[2].area)")
//          // عدد الجرعات
//                     Text("\(people[2].numberOfDoses)")
//                }
                Spacer()
                HStack{
                    Text("آخر تحديث ١٥-٣-٢٠٢٢")
                        .font(.system(size: 20, weight: .bold, design: .default))
                    Image(systemName: "repeat.circle.fill")
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5882, blue: 0.1961, alpha: 1)))
                        .font(.system(size: 30))
                }
                .padding()
                .border(Color.white, width: 5)
                .cornerRadius(10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}






