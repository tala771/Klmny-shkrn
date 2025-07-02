import SwiftUI

struct ContentView: View {
    @State private var phoneNumber: String = ""
    @State private var isVerified = false

    var body: some View {
        VStack(spacing: 20) {
            Text("تسجيل الدخول")
                .font(.largeTitle)
                .bold()

            TextField("أدخل رقم جوالك", text: $phoneNumber)
                .keyboardType(.phonePad)
                .padding()
                .background(Color(.secondarySystemBackground))
                .cornerRadius(10)
                .padding(.horizontal)

            Button(action: {
                // هنا يتم التحقق من رقم الجوال (نضيف Firebase لاحقاً)
                isVerified = true
            }) {
                Text("إرسال رمز التحقق")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.green)
                    .cornerRadius(10)
            }
            .padding(.horizontal)

            if isVerified {
                Text("✅ تم التحقق من الرقم!")
            }
        }
        .padding()
    }
}
