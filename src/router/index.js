import Vue from 'vue'
import Router from 'vue-router'
import sec_1 from '@/components/sec1'
import sec_2 from '@/components/sec2'
import sec_3 from '@/components/sec3'
import sec_4 from '@/components/sec4'
import sec_5 from '@/components/sec5'
import sec_6 from '@/components/sec6'
import sec_7 from '@/components/sec7'

Vue.use(Router)

export default new Router({
    mode: 'history',
    routes: [
        {
          path: '/',
          name: 'index',
          component: sec_1
        },
        {
          path: '/sec2',
          name: 'sec2',
          component: sec_2
        },
        {
          path: '/sec3',
          name: 'sec3',
          component: sec_3
        },
        {
          path: '/sec4',
          name: 'sec4',
          component: sec_4
        },
        {
          path: '/sec5',
          name: 'sec5',
          component: sec_5
        },
        {
          path: '/sec6',
          name: 'sec6',
          component: sec_6
        },
        {
          path: '/sec7',
          name: 'sec7',
          component: sec_7
        }
    ]
})
