// Anita Chen achen999, CSCI 571 Spring 2022, 2022/04/11
import React from 'react';
import * as ReactDOM from 'react-dom';
import {Map} from '@esri/react-arcgis';
import {Scene} from '@esri/react-arcgis';
import {WebMap,WebScene} from '@esri/react-arcgis';
import Campus from './Campus'; 

/**
function App() {
 ReactDOM.render(
  <Map style={{width:'30vw',height:'50vh',border:'1px solid black',margin:'10px'}}/> ,
  document.getElementById('container')
 );
 
  
 // ReactDOM.render()
 //ReactDOM.render(<Scene /> ,document.getElementById('container'));

// My ArcGIS WebMap
ReactDOM.render(
  <WebMap id="11110e41d8d840668da9a32ceca20820" style={{width:'30vw',height:'50vh',border:'1px solid black',margin:'10px'}}/>,
  document.getElementById('container')
);
}
*/

function App() {
  // like we started out with
  ReactDOM.render(
    <Scene/> ,
    document.getElementById('container')
  );
  }// App()
  
  // INSTEAD of 'export default App;'
  export default (props) => (
      <Scene style={{ width: '70vw', height: '90vh' }}
          //mapProperties={{ basemap: 'satellite' }}
          viewProperties={{
              center: [-118.28538,34.0205],
              zoom: 15
          }}>
          <Campus />
      </Scene>
  )