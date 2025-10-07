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
            VStack(spacing: 20) {

                // Logo + Dashboard title
                VStack(spacing: 10) {
                    Image("CleanTrackLogo") // your logo asset name
                        .resizable() // make the image resizable
                        .scaledToFit() // keep aspect ratio
                        .frame(maxWidth: .infinity) // take full width
                        .frame(height: 200) // adjust height as needed
                    
                }
                .frame(maxWidth: .infinity, alignment: .center) // Center logo + title

                // Welcome message
                HStack {
                    Text("Welcome, ")
                        .foregroundColor(.black)
                    Text("Jose Flores")
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        // Display user's name
                }

                // Summary statistics
                HStack {
                    VStack {
                        Text("Total Jobs")
                            .foregroundColor(.white)
                        Text("16") // placeholder
                            .font(.title)
                            .foregroundColor(.white)
                            // Display total jobs
                    }
                    Spacer()
                    VStack {
                        Text("Completed")
                            .foregroundColor(.white)
                        Text("0")
                            .font(.title)
                            .foregroundColor(.white)
                            // Display completed jobs
                    }
                }
                .padding()
                .background(Color.tealMain) // Main teal color
                .cornerRadius(10) // Rounded corners

                // Button to add a new job
                NavigationLink(destination: Text("Add Job View")) {
                    Text("Add New Job")
                        .foregroundColor(.white)
                        .padding() // Padding inside the button
                        .frame(maxWidth: .infinity) // Full width button
                        .background(Color.tealDark) // Dark teal button
                        .cornerRadius(10) // Rounded corners
                        // Navigate to Add Job screen
                }

                Spacer() // Push content to top
            }
            .padding() // Padding around VStack
            .frame(maxWidth: .infinity, maxHeight: .infinity) // Make VStack expand full screen
            .background(Color.white) // Dashboard background
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
