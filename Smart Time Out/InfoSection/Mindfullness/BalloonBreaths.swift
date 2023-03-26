import SwiftUI

struct BalloonBreaths: View {
    @State private var isStart: Bool = false
    @State private var isAnimating = false
    @State private var isScaling = false
    @State private var yOffset: CGFloat = 0.0
    @State private var currentTextIndex: Int = 0

    let textSequence = [
        "You and your child can use the timer to calm your breathing down together",
        "As the green circle expands take a deep breath in",
        "Hold your breath as the green circle stays big",
        "As the green circle shrinks, breathe out slowly through your mouth",
        "Hold your breath as the green circle stays small. Breathe in when it grows again.",
        "When you're finished press the X to exit"
    ]

    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Spacer()
                    Spacer()
                    Spacer()
                    if isStart {
                        ZStack {
                            GifImage("Breathe")
                                .offset(y: yOffset)
                        }
                        .frame(width: 250, height: 250)
                        .padding()

                        Spacer()
                        Spacer()
                    } else {
                        ZStack {
                            Image("Breathestatic")
                        }
                        .frame(width: 250, height: 250)
                        .padding()

                        Spacer()
                        Spacer()
                    }

                    Spacer()

                    if isStart {
                        Text(textSequence[currentTextIndex])
                            .font(.custom("Roboto-Regular", size: 18))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .padding(40.0)
                            .transition(.opacity)
                            .onAppear {
                                for index in 1..<textSequence.count {
                                    DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * 5.0) {
                                        withAnimation(.easeInOut) {
                                            currentTextIndex = index
                                        }
                                    }
                                }
                            }
                    } else {
                        Button(action: {
                            withAnimation(.easeIn) {
                                isStart.toggle()
                            }
                        }) {
                            ZStack {
                                Circle()
                                    .fill(isStart ? col1 : buttonDarkGray)
                                    .scaleEffect(isStart ? 0.8 : 1.0)

                                Image("Lotus")
                                    .renderingMode(.template)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(.white)
                                    .frame(width: 50, height: 50)
                            }

                            .frame(width: 110, height: 110)
                        }
                        .padding()

                        .background(backLightGray)
                        .cornerRadius(90)
                        .overlay(
                            RoundedRectangle(cornerRadius: 90)
                                .stroke(backLightGray))
                        Text("Start")
                            .font(.caption)
                    }
                }
            }
        }
        .navigationTitle("Calm Breaths")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(
            trailing: NavigationLink(
                destination: ContentView()
                    .navigationBarHidden(false)
                    .navigationBarBackButtonHidden(true),
                label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.black)
                }
            )
        )
    }
}

struct BalloonBreaths_Previews: PreviewProvider {
    static var previews: some View {
        BalloonBreaths()
    }
}
