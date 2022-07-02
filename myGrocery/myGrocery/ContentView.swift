//
//  ContentView.swift
//  myGrocery
//
//  Created by Yousef Almutairy on 30/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var items = ["Pepsi","Kinder","Egg","coca","doritos"]
    @State var addItem = ""
    @State var removeSelected = 0
    
    var body: some View {
        VStack{
            
        List(items, id:\.self) {item in
            HStack{
            Text(item)
                Spacer()
                Image(item)
                    .resizable()
                    .frame(width: 50, height: 60)
                
            }
            .onTapGesture {
                removeSelected = items.firstIndex {$0 == item}!
            }
           
            
        }
        HStack(){
            
             Button(action: {
                
               items += [addItem]
                 
            } ) {
                Image(systemName: "plus")
                    
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .background(Color.green)
                    .foregroundColor(Color.white)
                    
                
                    .frame(width: 70)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
                   
            }
            
            TextField("enter nuw item", text: $addItem)
            
            Button(action: {
               
                items.remove(at: removeSelected)
                
           } ) {
              
               Image(systemName: "trash")
                   
                   .resizable()
                   .scaledToFit()
                   .padding()
                   .background(Color.red)
                   .foregroundColor(Color.white)
                   
               
                   .frame(width: 70)
                   .clipShape(RoundedRectangle(cornerRadius: 20))
               
           }

            
            
        }
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
