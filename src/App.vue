<template>
  <div id="app" @mousewheel="mousewheel">
    <div class="container">
        <div class="row">
            <div class="header">
                <div class="col-sm-3 h_left">
                    <img src="./assets/images/1491380439.png" alt="谷美科技">
                </div>
                <div class="col-sm-5 h_con">
                    <ul>
                        <li><router-link to='/' dex="0">首页</router-link><span></span></li>
                        <li><router-link to='/sec2' dex="1">业务</router-link><span></span></li>
                        <li><router-link to='/sec3' dex="2">案例</router-link><span></span></li>
                        <li><router-link to='/sec4' dex="3">合作</router-link><span></span></li>
                        <li><router-link to='/sec5' dex="4">品质</router-link><span></span></li>
                        <li><router-link to='/sec6' dex="5">关于</router-link><span></span></li>
                        <li><router-link to='/sec7' dex="6">联系</router-link><span></span></li>
                    </ul>
                </div>
                <div class="col-sm-3 h_right">
                    <div class="h-r_con">
                        <span class="glyphicon glyphicon-earphone"></span>
                        <p class="p1">4007-573-002</p>
                        <span class="glyphicon glyphicon-th-large"></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <transition name="fade">
      <keep-alive>
        <router-view />
      </keep-alive>
    </transition>
  </div>
</template>

<script>
export default {
  name: 'App',
  data(){
    return {
      status: true,
      h_con: []
    }
  },
  methods: {
    mousewheel(event){
      if(this.status){
        setTimeout(()=>{
          let dex = sessionStorage.getItem('dex');
          if(dex){
            this.dex = dex;
          }
          if(event.deltaY > 0){
            //向下滚
            this.dex ++;
            this.status = true;
            if(this.dex > this.h_con.length - 1){
              this.dex = this.h_con.length - 1;
              return;
            }
            this.pdLink();
          }else{
            //向上滚
            this.dex --;
            this.status = true;
            if(this.dex < 0){
              this.dex = 0;
              return;
            }
            this.pdLink();
          }
        }, 100);
      }
      this.status = false;
    },
    autoCon_li(){
      this.h_con = document.querySelectorAll('.h_con a');
    },
    pdLink(){
      switch(this.dex){
        case 0: this.$router.push('/');break;
        case 1: this.$router.push('/sec2');break;
        case 2: this.$router.push('/sec3');break;
        case 3: this.$router.push('/sec4');break;
        case 4: this.$router.push('/sec5');break;
        case 5: this.$router.push('/sec6');break;
        case 6: this.$router.push('/sec7');break;
      }
    },
    pdPage(){
      this.dex = document.querySelector('.router-link-exact-active').getAttribute('dex');
    }
  },
  mounted(){
    this.autoCon_li();
    this.pdPage();
  }
}
</script>

<style>
  a:hover{
    text-decoration: none;
  }
  #app{
    width: 100%;
    height: 100%;
  }
  .router-link-exact-active{
    color: #ff9900 !important;
  }
  .sec{
    width: 100%;
    height: 100%;
  }
  .fade-enter-active{
    height: 100%;
    transition: all .35s ease-in;
  }
  .fade-leave-active{
    height: 0;
    transition: all .35s ease-in;
  }
  .fade-enter{
    height: 0;
  },
  .fade-leave{
    height: 100%;
  }
</style>
