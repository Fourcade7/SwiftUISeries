//
//  ContentView.swift
//  SwiftUISimple
//
//  Created by Fourcade7 on 13/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(
            alignment: .center) {
            Text("Hello, world!")
            Divider()
            Text("Hello, world!")
                    .padding(20)
            Text("Hello")
            HStack{
                    Text("Hello, world!")
                            .padding(20)
                    Text("Hello")
                    Text("Hello")
            }
                    
            }.padding(10)
            .frame(width: 200, height: 400)
            .background(Color.red)
            
        
    }
}




struct ContentView2: View {
    var body: some View {
        VStack(
            alignment: .leading) {
                Image("android")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                    .frame(height: 250)
            }.frame(height: .infinity)
            
            
        
    }
}


struct ContentView3: View {
    @State var  changetoggle = true
    var body: some View {
        VStack(
            alignment: .center) {
                Toggle(isOn: $changetoggle, label:{
                    Text("axaxax")
                } ).padding(45)
                
                if changetoggle{
                    Image("android")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .edgesIgnoringSafeArea(.all)
                        .frame(height: 250)
                }
                
            }.frame(height: .infinity)
        
            
            
        
    }
}

struct ButtonContentView: View {
    @State var  changetoggle = true
    var body: some View {
        VStack(
            alignment: .center) {
                Button(action: {
                    changetoggle = !changetoggle
                }, label: {
                    Text("Click me")
                })
                Toggle(isOn: $changetoggle, label:{
                    Text("axaxax")
                } ).padding(45)
                
            }.frame(height: .infinity)
        
            
            
        
    }
}

struct TextFieldContentView: View {
    @State var  name = ""
    var body: some View {
        VStack(
            alignment: .center) {
                TextField("enter your name", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
               
                
            }.frame(height: .infinity)
        
            
            
        
    }
}


struct StrapperContentView: View {
    @State var  age = 20
    var body: some View {
        VStack(
            alignment: .center) {
               Stepper("Negap", value: $age)
                Text("count \(age)")
               
                
            }.frame(height: .infinity)
        
            
            
        
    }
}

struct onTapContentView: View {
    @State var  text = ""
    var body: some View {
        VStack(
            alignment: .center) {
              
                
                Image("android")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                    .frame(height: 250)
                    .onTapGesture(count:2) {
                        text="GGGW"
                    }
                    .onLongPressGesture(minimumDuration: 2, perform: {
                        text="AXaxaxa"
                    })
                Text(text)
               
                
            }.frame(height: .infinity)
        
            
            
        
    }
}



struct ListItemM:View{
    
    var mytext:String
    
    var body: some View{
        Text(mytext)
    }
}

struct MyCustomList:View{
   
    var body: some View{
        List{
            ListItemM(mytext: "Pr")
        }
        
        
    }
}


struct NavigationVieww:View{
    var body : some View{
        NavigationView {
            Text("axaxax")
                .navigationBarTitle("PR", displayMode: .large)
                .navigationBarItems(trailing:
                 HStack{
                    Button(action: {
                       
                    }, label: {
                       Text("Click me")
                    })
                    Button(action: {
                                            
                    }, label: {
                       Text("exit")
                    })
                    
                    NavigationLink(destination: MyCustomList()) {
                     Text("Do Something")
                    }
                }
                  
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
       
        NavigationVieww()
    }
}


