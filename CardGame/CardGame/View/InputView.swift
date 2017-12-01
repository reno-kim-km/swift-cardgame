//
//  InputView.swift
//  CardGame
//
//  Created by 심 승민 on 2017. 11. 28..
//  Copyright © 2017년 JK. All rights reserved.
//

import Foundation

struct InputView {
    enum InputError: String, Error {
        case invalidMenuNumber = "1,2,3 번 메뉴 중 선택해 주십시오."
        case quit
    }

    static func askFor(message: String) throws -> String {
        // 요구 메시지 출력.
        print("\(message)", terminator: " ")
        // q 또는 quit 입력 시 종료.
        guard let inputLine = readLine(), inputLine != "q" && inputLine != "quit" else { throw InputError.quit }
        return inputLine
    }

    static func handleMenus() throws -> Dealer.GameMenu {
        let demand = """
                    다음 메뉴를 선택해주세요.
                    1. 카드 초기화
                    2. 카드 섞기
                    3. 카드 하나 뽑기
                    >
                    """
        let userInput = try askFor(message: demand)
        // 입력값이 숫자가 아니거나 1~3번을 제외한 수인 경우, 에러 전달.
        guard let menuNumber = Int(userInput), menuNumber == 1 || menuNumber == 2 || menuNumber == 3 else { throw InputError.invalidMenuNumber }
        return Dealer.GameMenu(rawValue: menuNumber)!
    }
    
}
