    <footer class="container text-right">
      <p>&copy; <?php 
      		echo date('Y') == $this->corpEst ? date('Y') : $this->corpEst.' - '.date('Y');
      		echo ' '.$this->corpName;
      	?> - All Rights Reserved</p>
    </footer>