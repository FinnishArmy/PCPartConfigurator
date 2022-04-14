//
//  BuildView.swift
//  PCPartConfigurator
//
//  Created by Ronny Valtonen on 4/14/22.
//

import SwiftUI

struct BuildView: View {
    @State private var cpuIndex = 0
    @State private var cpu_coolerIndex = 0
    @State private var motherboardIndex = 0
    @State private var memoryIndex = 0
    @State private var storageIndex = 0
    @State private var gpuIndex = 0
    @State private var caseIndex = 0
    @State private var powerIndex = 0
    
    var cpu = ["Choose a CPU", "Ryzen 5 3600 (6c/12t)", "Ryzen 3 4100 (4c/8t)", "Ryzen 5 5600X (6c/12t)", "Ryzen 5 5600G (6c/12t)", "Ryzen 7 5800X (8c/12t)", "Ryzen 7 5800X3D (8c/12t)", "Ryzen 5 5500U (6c/12t)", "Ryzen 7 5700X (8c/16t)", "Ryzen 9 5950X (16c/32t)", "Core i9-12900KS (16c/24t)", "Ryzen 5 PRO 4650G (6c/12t)", "FX-6300 (6c)", "Ryzen 7 5700G (8c/16t)", "A8-7680 (4c)", "Core i5-10400F (6c/12t)", "FX-8350 (6c/12t)", "Ryzen 7 3700X (8c/16t)", "Core 2 Duo E8400 (2c)", "Ryzen 5 2600 (6c/12t)", "Core i5-3470 (4c)", "Ryzen 9 5900X (12c/24t)", "Core i9-12900K (16c/24t)", "Ryzen 3 3200G (4c)", "Core i7-12700F (4c/8t)", "Ryzen 7 5800H (8c/16t", "Ryzen 5 4600G (6c/12t)", "Ryzen 5 5500 (6c/12t)", "Ryzen 7 5800G (8c/16t)", "Ryzen 7 6800U (8c/16t)", "Core i7-2600 (4c,8t)", "Core i5-12400F (6c/12t)", "Core i3-10100 (4c/8t)", "Core i7-12700K (12c/20t)", "Ryzen 5 3500X (6c)", "Athlonn 3000G (2c/4t)", "Ryzen 5 1600 (6c/12t)", "Ryzen 7 6800H (8c/16t)", "Ryzen 3 2200G (4c)", "Core i7-1260P (12c/16t)", "Core i5-2400 (4c)"]
    
    var cpu_cooler = ["Choose a cooler", "Cosair H150i ELITE", "NZXT Kraken X53", "Noctua NH-D15"]
    
    var motherboard = ["Choose a motherboard", "ASUS ROG STRIX B550-F GAMING", "MSI MAG B550 TOMAHAWK"]
    
    var memory = ["Choose your memory", "Corsair Vengeance RGB Pro (16gb/3200mhz", "G.Skill Ripjaws V Series (32gb/3200mhz"]
    
    var storage = ["Choose storage", "Seagate Barracuda Compute (2 TB)"]
    
    var gpu = ["Choose your GPU", "EVGA FTW3 ULTRA GAMING RTX 3070Ti", " ASUS DUAL EVO OC RTX 2060"]
    
    var case_choice = ["Choose your case", "Corsair 4000D", "NZXT H510", "Corsair iCUE 4000X RGB", "Cooler Master MasterBox Q300L"]
    
    var power_choice = ["Choose your PSU", "Corsair HX Platinum (1,000W)", "Corsair CXM (659W)", "Corsair RM (850W)"]
    
    var body: some View {
        ZStack {
            // Make a selection screen view
            // https://www.youtube.com/watch?v=OSxE86BUoOM
            NavigationView {
                Form {
                    // CPU Selection
                    Section {
                        Picker(selection: $cpuIndex, label: Text("CPU")) {
                            ForEach(0 ..< cpu.count) {
                                Text(self.cpu[$0]).tag($0)
                            }
                        }
                    }
                    // CPU Cooler Selection
                    Section {
                        Picker(selection: $cpu_coolerIndex, label: Text("CPU Cooler")) {
                            ForEach(0 ..< cpu_cooler.count) {
                                Text(self.cpu_cooler[$0]).tag($0)
                            }
                        }
                    }
                    
                    // Motherboard Selection
                    Section {
                        Picker(selection: $motherboardIndex, label: Text("Motherboard")) {
                            ForEach(0 ..< motherboard.count) {
                                Text(self.motherboard[$0]).tag($0)
                            }
                        }
                    }
                    
                    // Memory Selection
                    Section {
                        Picker(selection: $memoryIndex, label: Text("Memory")) {
                            ForEach(0 ..< memory.count) {
                                Text(self.memory[$0]).tag($0)
                            }
                        }
                    }
                    
                    // Storage Selection
                    Section {
                        Picker(selection: $storageIndex, label: Text("Storage")) {
                            ForEach(0 ..< storage.count) {
                                Text(self.storage[$0]).tag($0)
                            }
                        }
                    }
                    
                    // GPU Selection
                    Section {
                        Picker(selection: $gpuIndex, label: Text("Graphics Card")) {
                            ForEach(0 ..< gpu.count) {
                                Text(self.gpu[$0]).tag($0)
                            }
                        }
                    }
                    
                    // Case selection
                    Section {
                        Picker(selection: $caseIndex, label: Text("Case")) {
                            ForEach(0 ..< case_choice.count) {
                                Text(self.case_choice[$0]).tag($0)
                            }
                        }
                    }
                    
                    // Power Supply selection
                    Section {
                        Picker(selection: $powerIndex, label: Text("Power Supply")) {
                            ForEach(0 ..< power_choice.count) {
                                Text(self.power_choice[$0]).tag($0)
                            }
                        }
                    }
                }.navigationBarTitle("PC Builder")
            }
        }
        .background(.white)
//        .background(Image("background"))
        .padding()
    }
}

struct BuildView_Previews: PreviewProvider {
    static var previews: some View {
        BuildView()
    }
}
