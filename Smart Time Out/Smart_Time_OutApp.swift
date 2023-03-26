import SwiftUI
@main
struct Smart_Time_OutApp: App {
    var body: some Scene {
        WindowGroup {
            
            ZStack{
                
                MotherView()
                
            }
    }
}
}

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Disable dynamic text for all labels, text fields, and text views
        UILabel.appearance().adjustsFontForContentSizeCategory = false
        UITextField.appearance().adjustsFontForContentSizeCategory = false
        UITextView.appearance().adjustsFontForContentSizeCategory = false

        // Create the SwiftUI view that provides the window contents.
        let contentView = MotherView()

        // Use a UIHostingController as window root view controller.
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: contentView)
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}
