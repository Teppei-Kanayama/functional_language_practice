type ekimei_t = {
  kanji: string;
  kana: string;
  romaji: string;
  shozoku: string;
}

type ekikan_t = {
  kiten: string;
  shuten: string;
  keiyu: string;
  kyori: float;  (* 2駅間の距離（km） *)
  jikan: int;  (* 所要時間（分） *)
}

let hyoji ekimei = match ekimei with
  {kanji = kanji; kana = kana; romaji = romaji; shozoku = shozoku} -> shozoku ^ "、" ^ kanji ^ "（" ^ kana ^ "）"

let test = hyoji {
  kanji = "茗荷谷";
  kana = "みょうがだに";
  romaji = "myogadani";
  shozoku = "丸の内線";
} = "丸の内線、茗荷谷（みょうがだに）"
