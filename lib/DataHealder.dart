import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import './ModelCompany.dart';


var dataN;
var datad;
var list;
class DataHealber{
  Future<ModelCompany> getDataCompany()async{
    String url = "https://instadealco.com/tager/api/all/company";
    final request = await http.get(url,headers: {
      "Authorization" : "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiY2E1NzlhMDQ1NTQ0NjFmYzgyMzE0MDI1MTMzMzVlMmM3OGRlZmFmMDYxMTFlMzU1ZjgwYWYyOGExM2E4MzljMzMyYjQyN2E2OGQ3MTFmMzUiLCJpYXQiOjE1OTUxMTA5NTYsIm5iZiI6MTU5NTExMDk1NiwiZXhwIjoxNjI2NjQ2OTU2LCJzdWIiOiIzIiwic2NvcGVzIjpbXX0.eyiNXpq18OGqSCHIMiXDc1vdORAKKD9CGpfMyCufmr4byYdmoG0Z4ND2A6CK_EJxBMm5AXqCoGvGLp81CWMVUw8FTncTqmiLYGslRonAyP7HFy5deEm2IJ0akGP4gO9jlrag8cHdWdVYyS1dUZj-ChxNnRMdBUb_dAAW9bFAP7CgCJ-1xvFsXhdLP-0xuwTwUDUKW7FR8ly32SK63Xw6SG6AGD0UkQBWJ2Ikfh_kuNc9Zj_PbKOerimTg4uh7OtRtjVFPmnuQtbzwEEZkiCM-hzCKzC4lJ9RoJz4-hjyg3hlVJNsyigPxGKU4Aj6TmwGdO8wwOooU0lBY7Pc6c0Js0CkFi6tv-E7jB_vwW0fONJom0fjFhfKqNEEL7m_bYbPN080p3PMng4Utdn6ZlogiX73nt_DQXx02u1dDBBv-3iEzqb-5u_hsBA_qHBjvcp6cdscY2lK2BjwRpvKt0hZPm1dlp5JUG2XF7ao802lhMl5rcrPPdjCmfSdrU0a_YkgOZhcZekvZw6BarIO1vw9RV0eJIdMOyyWf2kYbr0OIWGMvM-q2BW0KOS4btkhvnWf7nCXNogYeQThiOaJLLflQXDLxlYNBo8eEfDY7b5nlsGsYvbJiNcwU5mOZ5hLRpc8EHUdWSBZUeCNdY_Yb7fDh3iBK4TvwpOnQyyAINRzH1c",
      "lang" : "ar",
    }).then((request){
      var data = modelCompanyFromJson(request.body);
      dataN = data;

//      list = data.Company.map<Widget>((i){return Text('$i');}).toList();
    });
  }

}