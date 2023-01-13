int KMPSearch(String pat, String txt) {
  int ss=0;
  int M = pat.length;
  int N = txt.length;

  List <int> lps=new List.filled(M,0);

  int j = 0;

  computeLPSArray(pat, M, lps);

  int i = 0;
  while ((N - i) >= (M - j)) {
    if (pat[j] == txt[i]) {
      j++;
      i++;
    }
    if (j == M) {
      print("Found pattern at index  ${i - j}");
      j = lps[j - 1];
      ss=1;
    }
    else if (i < N && pat[j] != txt[i]) {
      if (j != 0)
        j = lps[j - 1];
      else
        i = i + 1;
    }
  }
  return ss;
}
void computeLPSArray(String pat, int M, List<int> lps) {
  int len = 0;
  int i = 1;
  lps[0] = 0;

  while (i < M) {
    if (pat[i] == pat[len]) {
      len++;
      lps[i] = len;
      i++;
    }
    else
        {

      if (len != 0) {
        len = lps[len - 1];

      }
      else
          {
        lps[i] = len;
        i++;
      }
    }
  }
}
List<Map<String,dynamic>> foundUser=[];