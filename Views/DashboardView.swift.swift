//
//  DashboardView.swift
//  CleanTrack
//
//  Created by Jose Flores on 2025-10-07.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                
                // Título
                Text("CleanTrack Dashboard")
                    .font(.largeTitle)
                    .bold()
                
                // Bienvenida
                HStack {
                    Text("Welcome, ")
                    Text("Jose Flores")
                        .fontWeight(.bold)
                }
                
                // Estadísticas resumidas
                HStack {
                    VStack {
                        Text("Total Jobs")
                        Text("16") // placeholder
                            .font(.title)
                    }
                    Spacer()
                    VStack {
                        Text("Completed")
                        Text("0")
                            .font(.title)
                    }
                }
                .padding()
                .background(Color(hex: "#34C3B8"))
                .cornerRadius(10)
                
                // Botón para agregar nuevo trabajo
                NavigationLink(destination: Text("Add Job View")) {
                    Text("Add New Job")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}

#Preview {
    DashboardView()
}
