<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>table page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
   
 <link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
 <div class="logo">

		<a href="/"><img src="/img/k2.png" alt="logo"
					style="max-width: 300px; max-height: 300px"></img></a>
</div>
  </head>
<style>
.mydiv{
  border: 5px outset;
  /* background-color:#abcf9b;     */
  background-color:#D6EEEE  ;    
  /* text-align: left; */
}

p {
  display: block;
  margin-top: 1em;
  margin-bottom: 1em;
  margin-left: 0;
  margin-right: 0;
  background-color: #D6EEEE;
}

* {
            position: relative;
            box-sizing: border-box;
        }

        /* table, */
        th,
        td {
            border-radius: 10px;
            border: 1px solid;
            border-color: rgb(26, 26, 112);
            width: 60%;
        }

        td,
        th {
            padding: 2px;
            text-align: left;
            border-bottom: 1px;

        }

        tr:hover {
            background-color: #D6EEEE;
        }</style>
  <body>
    
    <div class="container-fluid  mydiv" >
  <p >  
<h3>Name:${pat.firstname} ${pat.lastname}</h3>
<h3>patientId:${pat.patid} </h3>
<h3>Email:${pat.email} </h3>
<h3>Gender:${pat.gender} </h3>
<h3>Phno:${pat.phno} </h3>
<h3>Aadhaar:${pat.adhar} </h3>
<h3>Pin:${pat.pin} </h3>
<div class="class container" th:if="${session.message}"
		th:classappend="${session.message}" class="alert alert-success"
		role="alert">
		<p th:text="${session.message}"></p>
	</div>
    </div>
   <div class="container-fluid">
<p  style="color: red;">{{error}}</p>
  <form action="result" method='post'  class="container-fluid">
    <center><h2>NCD Risk Assessment Checklist</h2></center>
    <table align="center" border="1" height="" width="">
      <tr>
        <th colspan="5" bgcolor="99eb50" align="center"></th>
      </tr>
      <tr class="myTable" style="background-color: skyblue;">
        <td>Question</td>
        <td>Range</td>
        <td>Circle Any</td>
        <td>Score</td>
      </tr>

      <tr>
        <td>
          <h1>1. What is your age? (in complete years)</h1>
        </td>
        <td>
          <table class="myTable" width="100%" border="2 solid">
            <tr>
              <td>30-39 </td>
            </tr>
            <tr>
              <td>40-49</td>
            </tr>
            <tr>
              <td>50-59</td>
              <tr>
                <td>60</td>
              </tr>
            </table>
          </td>
          <td>
            <table class="myTable" width="100%" border="2 solid">
              <tr>
                <td>0 </td>
              </tr>
              <tr>
                <td>1</td>
              </tr>
              <tr>
              <td>2</td>
            </tr>
            <tr>
              <td>3</td>
            </tr>
          </table>
        </td>
        <td>
          
          
          <div>
            <label>input 0/1/2/3</label><br>
            <input  type="number" id="pp1" name="pp1" pattern="[0-3]{1}" min="0" max="3" oninput="validity.valid||(value='');"  />
            
            
            
          </div>
        </td>
        
        
        
      </tr>
      
      
      <tr>
        <td>
          <h2>2.Do you smoke or Consume smokeless product like Gutka or Khaini</td></h2>
        <td>
          <table class="myTable" width="100%" border="2 solid">
            
            <tr>
              
              <td> Never </td>
            </tr>
            <tr>
              <td> Used to consume in past/ sometime now </td>
              
            </tr>
            <tr>
              <td> Daily</td>
              
            </table>
          </td>
          <td>
            <table class="myTable" width="100%" border="2 solid">
              <tr>
                <td>0 </td>
              </tr>
              <tr>
                <td>1</td>
              </tr>
              <tr>
                <td>2</td>
              </tr>

            </table>
          </td>
          <td>
          
            <div>
              <label>input 0/1/2</label> <br>
              <input type="number" id="pp2" name="pp2" pattern="[0-2]{1}" min="0" max="2" oninput="validity.valid||(value='');"/>
            </td>
          </tr>
          <tr>
            <td><h2>
              3. Do you consume alcohol daily?</h2></td>
              <td>
                <table class="myTable" width="100%" border="2 solid">
                
                
                
                <tr>
                  
                  <td> yes </td>
                </tr>
                <tr>
                  <td> No</td>
                  
                </tr>
                
              </table>
            </td>
            <td>
          <table class="myTable" width="100%" border="2 solid">
            <tr>
              <td>0 </td>
            </tr>
            <tr>
              <td>1</td>
            </tr>
            
          </table>
        </td>
        <td>
          
          <div>
            <label>input 0/1</label>
            <input type="number" id="pp3" name="pp3" pattern="[0-1]{1}" min="0" max="1" oninput="validity.valid||(value='');"/>
          </div>
          
          
          
        </td>
      </tr>
      
      <!-- 4th question -->
      
      <tr>
        <td><h2>4. Measurement of waist in (Cm)</h2></td>
        <td>
          <table class="myTable" width="100%" border="2 solid">
            <tr>
              
              <td>Female</td>
              <td> Male</td>
            </tr>
            <tr>
              
              <td>80 cm or less</td>
              <td> 90 cm or less</td>
            </tr>
            <tr>
              <td>81-90 cm</td>
              <td> 90-100 cm</td>
            </tr>
            <tr>
              
              <td>More than 90 cm</td>
              <td> More than 100 cm</td>
            </tr>
            
          </table>
        </td>
        <td>
          <table class="myTable" width="100%" height="100%" border="2 solid">
            <tr>
              <td>0 </td>
            </tr>
            <tr>
              <td>1</td>
            </tr>
            <tr>
              <td>2</td>
            </tr>
            <tr>
              <td>3</td>
            </tr>
            
            
          </table>
        </td>
        <td>
        
          <div>
            <label>input 0/1/2/3</label>
            <input type="number" id="pp4" name="pp4" autocomplete="off" pattern="[0-3]{1}" min="0" max="3"  oninput="validity.valid||(value='');" />
            
          </div>
        </td>
      </tr>
      
      
      <!-- 5th para -->
      <tr>
        <td><h2>5. Do you undertake any physical activities for a minimum of 150 minutes a week?
        </h2></td>
        <td>
          <table class="myTable" width="100%" border="2 solid">
            <tr>
              <td> At least 150 minutes a week
              </td>
            </tr>
            <tr>
              <td> Less than 150 min a week</td>
            </tr>
          </table>
        </td>
        <td>
          <table class="myTable" width="100%" height="100%" border="2 solid">
            <tr>
              <td>0 </td>
            </tr>
            <tr>
              <td>1</td>
            </tr>
            
          </table>
        </td>
        <td>
          
        
          <div>
            <label>input 0/1</label>
            <input type="number" id="pp5" name="pp5" autocomplete="off" pattern="[0-1]{1}"  min="0"  max="1" oninput="validity.valid||(value='');"/>
            
          </div>
        </td>
      </tr>
      <tr>
        <td><h2>6. Do you have a family history (any one of your parents or siblings) of high blood pressure, diabetes
          and
          heart
          disease?
        </h2>
        </td>
        <td>
          <table class="myTable" width="100%" border="2 solid">
            <tr>
              <td> yes </td>
            </tr>
            <tr>
              <td> No</td>
              
            </tr>
          </table>
        </td>
        <td>
          <table class="myTable" width="100%" height="100%" border="2 solid">
            <tr>
              <td>0 </td>
            </tr>
            <tr>
              <td>1</td>
            </tr>
            
          </table>
        </td>
        <td>
          <div>
            <label>input 0/1</label>
            <input type="number" id="pp6" name="pp6" autocomplete="off" pattern="[0-1]{1}" min="0" max="1"  oninput="validity.valid||(value='');" />
            
          </div>
        </td>
      </tr>
    </table>
    <button type="submit" class="btn btn-primary">Submit</button>
    <button type="reset" value="reset" class="btn btn-secondary">Clear</button>
  </form>
</div>
<br>
  <br>
  <br>  
</body>
</html>