//
//  QuestionBank.swift
//  Quiz App
//
//  Created by amin on 1/27/19.
//  Copyright © 2019 amin. All rights reserved.
//

import Foundation

class QuestionBank{
    
    var questionsArray = [Question]()
    init() {
        questionsArray.append(Question(text:"اول شيئ خلقه الله تعالى هو القلم ؟",ans: true))
        questionsArray.append(Question(text:"هل قتل هابيل اخاه قابيل ؟",ans: false))
        questionsArray.append(Question(text:"نبي الله الذى لم يمت هو إبراهيم عليه السلام ؟",ans: false))
        questionsArray.append(Question(text:"ادريس هو نبي الله الذي قُبضت روحه ف السماء ؟",ans: true))
        questionsArray.append(Question(text:"صوت الكلب هو الصوت الذي خلقه الله ونكره ؟",ans: false))
        questionsArray.append(Question(text:"كيد النساء ما خلقه الله وعظمه ؟ ",ans: true))
        questionsArray.append(Question(text:"سميت بلاد الشام بهذا الاسم نسبة الى سام بن نوح ؟",ans: true))
        questionsArray.append(Question(text:"النبى الذى اقسم الله بإسمه ف القرءآن هو إبراهيم ؟",ans: false))
        questionsArray.append(Question(text:"نوح هو اول الرسل من بعد آدم ؟",ans: true))
        questionsArray.append(Question(text:"القاسم هو اول اولاد الرسول ؟",ans: true))
        questionsArray.append(Question(text:"عائشة بنت ابى بكر هى من تزوجها الرسول صلى الله عليه وسلم وهى بكر ؟",ans: true))
        questionsArray.append(Question(text:"عدد سور القرءآن المدنيه ٨٦ ؟",ans: false))
        questionsArray.append(Question(text:"عدد سور القرءآن المكية ٢٨ ؟",ans: false))
        questionsArray.append(Question(text:"عدد مرات السجود ف القرءآن ١٥ سجدة ؟",ans: true))
        questionsArray.append(Question(text:"ذكرت فبأى آلاء ربكما تكذبان ف سورة الرحمن ٣٠ مرة ؟",ans: false)) //31
        questionsArray.append(Question(text:"عدد ايات القرءآن الكريم ٦٢٣٦ ؟",ans: true))
        questionsArray.append(Question(text:"تعد سورة الكافرون ربع القرءآن الكريم ؟",ans: true))
        questionsArray.append(Question(text:"تعد سورة الاخلاص ب نصف القرءآن الكريم ؟",ans: true))
        questionsArray.append(Question(text:"اعظم سورة ف القرءآن سورة البقرة ؟",ans: false))
        questionsArray.append(Question(text:"يطلق على سورة يس قلب القرءآن ؟",ans: true))
    }
}
